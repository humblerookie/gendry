import 'package:bitrise_client/bloc/onboarding_profile_bloc.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/initializer.dart';
import 'package:bitrise_client/core/profile_entities.dart';
import 'package:bitrise_client/res/colors.dart';
import 'package:bitrise_client/res/dimensions.dart';
import 'package:bitrise_client/res/images.dart';
import 'package:bitrise_client/res/strings.dart';
import 'package:bitrise_client/ui/error_retry.dart';
import 'package:bitrise_client/ui/home.dart';
import 'package:bitrise_client/ui/login/login.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingProfileScreen extends StatefulWidget {
  @override
  _OnboardingProfileScreenState createState() =>
      _OnboardingProfileScreenState();
}

class _OnboardingProfileScreenState extends State<OnboardingProfileScreen> {
  OnboardingProfileBloc _bloc;

  _OnboardingProfileScreenState() {
    _bloc = AppInjector.appComponent.onboardingProfileBloc();
    initNavEvents();
    _bloc.dispatch(Init());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(Strings.PROFILE),
        ),
        body: BlocProvider<OnboardingProfileBloc>(
          bloc: _bloc,
          child: OnboardingProfileContent(bloc: _bloc),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void navigateToTarget(String target) {
    switch (target) {
      case OnboardingProfileTargets.LOGIN:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
        break;
      case OnboardingProfileTargets.HOME:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
    }
  }

  void initNavEvents() {
    _bloc.navEvents.listen((event) {
      switch (event.runtimeType) {
        case NextScreen:
          var data = event as NextScreen;
          navigateToTarget(data.target);
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

class OnboardingProfileContent extends StatelessWidget {
  final OnboardingProfileBloc bloc;

  const OnboardingProfileContent({Key key, this.bloc}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: BlocBuilder<OnboardingProfileEvent, ProfileData>(
            bloc: bloc,
            builder: (BuildContext context, ProfileData data) {
              switch (data.state) {
                case LoadState.LOADING:
                  return Container(
                      child: Center(child: CircularProgressIndicator()));
                case LoadState.ERROR:
                  return ErrorRetryWidget(
                      action: Strings.RETRY,
                      message: data.errorMessage,
                      listener: onRetry);
                default:
                  return ProfileDataContent(
                      data: data, listener: onButtonClick);
              }
            }));
  }

  void onRetry() {
    bloc.dispatch(Retry());
  }

  void onButtonClick(bool isYes) {
    bloc.dispatch(ActionSelected(isYes));
  }
}

class ProfileDataContent extends StatelessWidget {
  final ProfileData data;

  final void Function(bool isYes) listener;

  const ProfileDataContent({Key key, this.data, this.listener})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            margin: EdgeInsets.fromLTRB(0, Dimens.space_xxxlarge, 0, 0),
            decoration: BoxDecoration(color: AppColors.getPrimaryColor()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ProfilePic(data: data),
                DetailsPart(data: data),
                BottomText(),
                BottomButtons(listener)
              ],
            )));
  }
}

class DetailsPart extends StatelessWidget {
  const DetailsPart({
    Key key,
    @required this.data,
  }) : super(key: key);

  final ProfileData data;

  @override
  Widget build(BuildContext context) {
    var captionStyle = TextStyle(
        color: AppColors.getPrimaryColor(), fontSize: Dimens.text_normal);
    var contentStyle = TextStyle(
        color: AppColors.getPrimaryColor(),
        fontSize: Dimens.text_large,
        fontWeight: FontWeight.w700);
    return Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(
            Dimens.keyline_main, Dimens.space_xxlarge, Dimens.keyline_main, 0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(Dimens.keyline_main),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(Strings.TITLE_EMAIL, style: captionStyle),
                SizedBox(
                  height: Dimens.space_small,
                ),
                Text(data.email, style: contentStyle),
                SizedBox(
                  height: Dimens.space_xlarge,
                ),
                Text(Strings.TITLE_USERNAME, style: captionStyle),
                SizedBox(
                  height: Dimens.space_small,
                ),
                Text(data.username, style: contentStyle),
              ],
            ),
          ),
        ));
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
    @required this.data,
  }) : super(key: key);

  final ProfileData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.image_large,
      height: Dimens.image_large,
      decoration:
          BoxDecoration(color: AppColors.accentColor, shape: BoxShape.circle),
      child: Padding(
          padding: EdgeInsets.all(Dimens.space_normal),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.image_large),
            child: CachedNetworkImage(
              imageUrl: data.avatar,
              height: Dimens.image_large,
              width: Dimens.image_large,
              fit: BoxFit.cover,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) =>
                  Image.asset(Images.user_placeholder),
            ),
          )),
    );
  }
}

class BottomButtons extends StatelessWidget {
  final void Function(bool isYes) _listener;

  BottomButtons(this._listener);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.button_height,
      margin: EdgeInsets.fromLTRB(Dimens.keyline_main, Dimens.space_xxlarge,
          Dimens.keyline_main, Dimens.keyline_main),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _Button(
            action: Strings.TITLE_NO,
            color: Colors.red,
            listener: onNoClick,
          ),
          SizedBox(
            width: Dimens.keyline_main,
          ),
          _Button(
              action: Strings.TITLE_YES,
              color: Colors.green,
              listener: onYesClick)
        ],
      ),
    );
  }

  void onNoClick() {
    _listener(false);
  }

  void onYesClick() {
    _listener(true);
  }
}

class _Button extends StatelessWidget {
  final String action;
  final Color color;
  final void Function() listener;

  const _Button({Key key, this.action, this.color, this.listener})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        padding: EdgeInsets.all(Dimens.keyline_main),
        child: Text(
          action.toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontSize: Dimens.text_medium,
              fontWeight: FontWeight.w700),
        ),
        color: color,
        onPressed: () {
          listener();
        },
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          Dimens.keyline_main, Dimens.space_large, Dimens.keyline_main, 0),
      child: Text(
        Strings.BODY_IS_IT_YOU,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white70,
            fontSize: Dimens.text_xlarge,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
