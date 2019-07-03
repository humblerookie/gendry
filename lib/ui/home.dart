import 'package:bitrise_client/api/entities/builds/app_build.dart';
import 'package:bitrise_client/bloc/home_bloc.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/home_entities.dart';
import 'package:bitrise_client/core/initializer.dart';
import 'package:bitrise_client/res/colors.dart';
import 'package:bitrise_client/res/dimensions.dart';
import 'package:bitrise_client/res/strings.dart';
import 'package:bitrise_client/ui/builds/build_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'error_retry.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc _bloc;

  _HomeScreenState() {
    _bloc = AppInjector.appComponent.homeBloc();
    initNavEvents();
    _bloc.dispatch(InitEvent());
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme.body1.apply(color: Colors.black87);
    var id = -1;
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(Strings.APP_NAME),
          actions: <Widget>[
            PopupMenuButton<int>(
              icon: Icon(
                Icons.sort,
                color: Colors.white,
              ),
              itemBuilder: (context) => Strings.HOME_POP_MENU
                  .map((it) => PopupMenuItem(
                        value: id++,
                        child: Text(it, style: theme),
                      ))
                  .toList(),
              initialValue: -1,
              onCanceled: () {},
              onSelected: (value) {
                _bloc.dispatch(FilterEvent(value));
              },
            )
          ],
        ),
        body: BlocProvider<HomeBloc>(
          bloc: _bloc,
          child: HomeContent(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void initNavEvents() {
    _bloc.navEvents.listen((event) {
      switch (event.runtimeType) {
        case NextScreen:
          var e = event as NextScreen;
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BuildDetailsScreen(
                      appBuild: e.data as AppBuild,
                    )),
          );
          break;
      }
    });
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}

class HomeContent extends StatelessWidget {
  HomeBloc _bloc;

  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<HomeBloc>(context);
    return Container(
        child: BlocBuilder<HomeEvent, HomeData>(
            bloc: _bloc,
            builder: (BuildContext context, HomeData data) {
              switch (data.state) {
                case LoadState.LOADING:
                  return Container(
                      child: Center(child: CircularProgressIndicator()));
                case LoadState.EMPTY:
                  return Container(child: Text(Strings.ERROR_NO_BUILDS));
                case LoadState.ERROR:
                  return ErrorRetryWidget(
                      action: Strings.RETRY,
                      message: data.errorMessage,
                      listener: onRetry);
                default:
                  return HomeBuildsScreen(data.appBuilds, onItemSelected);
              }
            }));
  }

  void onRetry() {
    _bloc.dispatch(RetryEvent());
  }

  void onItemSelected(int index) {
    _bloc.dispatch(ItemSelectedEvent(index));
  }
}

class HomeBuildsScreen extends StatelessWidget {
  List<AppBuild> _data;

  Function(int index) _listener;

  HomeBuildsScreen(
    List<AppBuild> data,
    void Function(int index) onItemSelected, {
    Key key,
  }) : super(key: key) {
    this._data = data;
    this._listener = onItemSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Dimens.keyline_main),
      child: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return GestureDetector(
              //You need to make my child interactive
              onTap: () => _listener(index),
              child: AppBuildItem(
                item: _data[index],
              ),
            );
          }),
    );
  }
}

class AppBuildItem extends StatelessWidget {
  final AppBuild item;

  const AppBuildItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var total_width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(
          Dimens.keyline_main, Dimens.keyline_main, Dimens.keyline_main, 0),
      child: Card(
        child: Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LabelInfo(
                  background: AppColors.accentColor,
                  text: item.repository.projectType,
                  textStyle: Theme.of(context).textTheme.body1),
              WorkflowInfo(total_width: total_width, item: item),
              PrInfo(item: item),
              BuildMetaInfo(item: item),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelInfo extends StatelessWidget {
  const LabelInfo({
    Key key,
    @required this.background,
    @required this.text,
    @required this.textStyle,
  }) : super(key: key);

  final Color background;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(Dimens.space_normal, Dimens.space_small,
          Dimens.space_normal, Dimens.space_small),
      decoration: BoxDecoration(color: background),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

class BuildMetaInfo extends StatelessWidget {
  final AppBuild item;

  const BuildMetaInfo({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        Dimens.keyline_main,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          LabelInfo(
              background: Colors.black12,
              text: "#${item.buildNumber}",
              textStyle: Theme.of(context)
                  .textTheme
                  .body2
                  .apply(color: Colors.black87)),
          SizedBox(width: Dimens.keyline_main),
          LabelInfo(
              background: Colors.black12,
              text: getElapsedTime(item),
              textStyle: Theme.of(context)
                  .textTheme
                  .body1
                  .apply(color: Colors.black87)),
          SizedBox(width: Dimens.keyline_main),
          LabelInfo(
              background: getBackgroundColorForStatus(item.status),
              text:
                  "${item.statusText[0].toUpperCase()}${item.statusText.substring(1)}",
              textStyle: Theme.of(context)
                  .textTheme
                  .body1
                  .apply(color: getTextColorForStatus(item.status))),
        ],
      ),
    );
  }


}

class PrInfo extends StatelessWidget {
  const PrInfo({
    Key key,
    @required this.item,
  }) : super(key: key);

  final AppBuild item;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 30,
        padding: EdgeInsets.fromLTRB(
            Dimens.keyline_main, Dimens.space_normal, Dimens.keyline_main, 0),
        child: Text(
          item.commitMessage != null
              ? item.commitMessage
              : (Strings.CONTENT_ALT_WORKFLOW + item.slug),
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.title.apply(color: Colors.black87),
        ),
      ),
    );
  }
}

class WorkflowInfo extends StatelessWidget {
  const WorkflowInfo({
    Key key,
    @required this.total_width,
    @required this.item,
  }) : super(key: key);

  final double total_width;
  final AppBuild item;

  @override
  Widget build(BuildContext context) {
    var theme =
        Theme.of(context).textTheme.subhead.apply(color: Colors.black87);
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            Dimens.keyline_main, Dimens.keyline_main, Dimens.keyline_main, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: total_width * 0.35,
              child: Text(
                item.repository.title,
                overflow: TextOverflow.ellipsis,
                style: theme,
              ),
            ),
            SizedBox(
              width: Dimens.space_normal,
            ),
            Icon(Icons.usb),
            Flexible(
              child: Text(
                item.branch,
                overflow: TextOverflow.ellipsis,
                style: theme,
              ),
            ),
            SizedBox(
              width: Dimens.space_normal,
            ),
            Icon(Icons.wrap_text),
            Flexible(
              child: Text(
                item.triggeredWorkflow,
                overflow: TextOverflow.ellipsis,
                style: theme,
              ),
            )
          ],
        ),
      ),
    );
  }
}

String getElapsedTime(AppBuild item) {
  var triggeredAt = DateTime.parse(item.triggeredAt);
  var finishedAt = item.finishedAt != null
      ? DateTime.parse(item.finishedAt)
      : DateTime.now();
  var diff = finishedAt.difference(triggeredAt);
  var diffInHours = diff.inHours > 0 ? "${diff.inHours}h " : "";
  var delta = diff.inMinutes - diff.inHours * 60;
  var diffInMins = delta > 0 ? "${delta}m " : "";
  delta = diff.inSeconds - diff.inMinutes * 60;
  var diffInSecs = delta > 0 ? "${delta}s " : "";
  return "$diffInHours$diffInMins$diffInSecs";
}

Color getTextColorForStatus(int status) {
  switch (status) {
    case 0:
      return Colors.black87;
    case 1:
    case 2:
      return Colors.white;
    case 3:
    case 4:
      return Colors.white70;
    default:
      return Colors.black;
  }
}

Color getBackgroundColorForStatus(int status) {
  switch (status) {
    case 0:
      return Colors.amber;
    case 1:
      return AppColors.darkGreen;
    case 2:
      return Colors.red;
    default:
      return Colors.deepOrangeAccent;
  }
}
