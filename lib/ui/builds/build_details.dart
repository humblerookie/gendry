import 'package:bitrise_client/api/entities/builds/app_build.dart';
import 'package:bitrise_client/api/entities/builds/build_log.dart';
import 'package:bitrise_client/bloc/build_details_bloc.dart';
import 'package:bitrise_client/core/build_detail_entities.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/initializer.dart';
import 'package:bitrise_client/res/colors.dart';
import 'package:bitrise_client/res/dimensions.dart';
import 'package:bitrise_client/res/images.dart';
import 'package:bitrise_client/res/strings.dart';
import 'package:bitrise_client/ui/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildDetailsScreen extends StatefulWidget {
  final AppBuild appBuild;

  const BuildDetailsScreen({Key key, this.appBuild}) : super(key: key);

  @override
  _BuildDetailsScreenState createState() => _BuildDetailsScreenState(appBuild);
}

class _BuildDetailsScreenState extends State<BuildDetailsScreen> {
  BuildDetailsBloc _bloc;

  _BuildDetailsScreenState(appBuild) {
    _bloc = AppInjector.appComponent.buildDetailsBloc();
    initNavEvents();
    _bloc.dispatch(InitEvent(appBuild));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<BuildDetailsBloc>(
      bloc: _bloc,
      child: _BuildDetailsContent(),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void initNavEvents() {
    _bloc.navEvents.listen((event) {
      switch (event.runtimeType) {
      }
    });
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}

class _BuildDetailsContent extends StatelessWidget {
  const _BuildDetailsContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BuildDetailsBloc _bloc = BlocProvider.of<BuildDetailsBloc>(context);
    return BlocBuilder<BuildDetailsEvent, BuildDetailsData>(
        bloc: _bloc,
        builder: (BuildContext context, BuildDetailsData data) {
          switch (data.state) {
            case LoadState.EMPTY:
              return Center(
                child: CircularProgressIndicator(),
              );
            default:
              return NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        expandedHeight: 200.0,
                        floating: false,
                        pinned: true,
                        leading: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                        flexibleSpace: CollapsedHeader(
                            title: Strings.TITLE_BUILD_PREFIX +
                                data.data.buildNumber.toString()),
                      ),
                    ];
                  },
                  body: _BodyContent(
                    data: data,
                  ));
          }
        });
  }
}

class _BodyContent extends StatelessWidget {
  final BuildDetailsData data;

  const _BodyContent({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(Dimens.keyline_main),
        child: Column(
          children: <Widget>[
            _BuildInfo(data.data),
            _TagsInfo(data.data),
            _LogInfo(data.log, data.state, data.errorMessage),
          ],
        ));
  }
}

class _BuildInfo extends StatelessWidget {
  final AppBuild data;

  _BuildInfo(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.keyline_main),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                Strings.TITLE_BUILD_PREFIX + "#" + data.buildNumber.toString(),
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .apply(color: Colors.black54),
              ),
              SizedBox(height: Dimens.space_normal),
              Text(
                data.triggeredWorkflow,
                style: Theme.of(context)
                    .textTheme
                    .title
                    .apply(color: Colors.black87),
              ),
              SizedBox(height: Dimens.space_normal),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.graphic_eq,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: Dimens.space_small,
                  ),
                  Flexible(
                    child: Text(
                      data.commitMessage != null
                          ? data.commitMessage
                          : (Strings.CONTENT_ALT_WORKFLOW + data.slug),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .subhead
                          .apply(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TagsInfo extends StatelessWidget {
  final AppBuild data;

  _TagsInfo(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(top: Dimens.keyline_main),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: AppColors.lightBlue,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    Dimens.keyline_main,
                    Dimens.space_normal,
                    Dimens.keyline_main,
                    Dimens.space_normal),
                child: Text(
                  "${Strings.TITLE_RUNTIME_PREFIX}${getElapsedTime(data)}",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .apply(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            width: Dimens.keyline_main,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: AppColors.darkGreen,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    Dimens.keyline_main,
                    Dimens.space_normal,
                    Dimens.keyline_main,
                    Dimens.space_normal),
                child: Text(
                  "${data.statusText[0].toUpperCase()}${data.statusText.substring(1)}",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .apply(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _LogInfo extends StatelessWidget {
  final BuildLog data;
  final LoadState state;
  String errorMessage;

  _LogInfo(this.data, this.state, [this.errorMessage]);

  @override
  Widget build(BuildContext context) {
    var total_height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: Dimens.space_xxlarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                Strings.TITLE_BUILD_INFO,
                style: Theme.of(context)
                    .textTheme
                    .title
                    .apply(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: Dimens.space_normal,
          ),
          Container(
            height: total_height*0.4,
              color: Colors.black,
              child: _logContent(
                  this.data, this.state, this.errorMessage, context))
        ],
      ),
    );
  }

  Widget _logContent(BuildLog data, LoadState state, String errorMessage,
      BuildContext context) {
    if (state == LoadState.EMPTY || state == LoadState.LOADING) {
      return Center(
        child: Container(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(),
        ),
      );
    } else if (state == LoadState.ERROR) {
      return Center(child: Text(this.errorMessage));
    } else {
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Dimens.space_normal),
              child: Text(data.log, style: Theme.of(context).textTheme.body1),
            ),
          )),
        ],
      );
    }
  }
}

class CollapsedHeader extends StatelessWidget {
  final String title;

  const CollapsedHeader({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
        centerTitle: false,
        title: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            )),
        background: Image.asset(
          Images.image_placeholder,
          fit: BoxFit.cover,
        ));
  }
}
