import 'package:bitrise_client/bloc/spash_bloc.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/initializer.dart';
import 'package:bitrise_client/core/splash_entities.dart';
import 'package:bitrise_client/res/colors.dart';
import 'package:bitrise_client/res/dimensions.dart';
import 'package:bitrise_client/res/images.dart';
import 'package:bitrise_client/res/strings.dart';
import 'package:bitrise_client/ui/login/login.dart';
import 'package:bitrise_client/ui/onboarding/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashBloc _bloc;

  _SplashScreenState() {
    _bloc = AppInjector.appComponent.splashBloc();
    initNavEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<SplashBloc>(
      bloc: _bloc,
      child: SplashContent(),
    ));
  }

  void navigateToTarget(String target) {
    switch (target) {
      case SplashTargets.LOGIN:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
        break;
      case SplashTargets.HOME:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case SplashTargets.ONBOARDING:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnboardingProfileScreen()),
        );
        break;

    }
  }

  void initNavEvents() {
    _bloc.navEvents.listen((event){
      switch(event.runtimeType){
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

class SplashContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SplashBloc _bloc = BlocProvider.of<SplashBloc>(context);
    return Container(
        child: BlocBuilder<SplashEvent, SplashData>(
            bloc: _bloc,
            builder: (BuildContext context, SplashData data) {
              return Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Container(
                    decoration:
                        BoxDecoration(color: AppColors.getPrimaryColor()),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 2, child: CenterPiece())
                    ],
                  )
                ],
              );
            }));
  }
}

class CenterPiece extends StatefulWidget {

  CenterPiece({
    Key key,
  }) : super(key: key);

  @override
  _CenterPieceState createState() => _CenterPieceState();
}

class _CenterPieceState extends State<CenterPiece>
    with SingleTickerProviderStateMixin {
  Animation anim;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    final SplashBloc _bloc = BlocProvider.of<SplashBloc>(context);
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    anim = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    )
      ..addListener(() => setState(() {}))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _bloc.dispatch(SplashInit());
        }
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        child: ScaleTransition(
            scale: anim,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(Images.logo, height: 50),
                Padding(
                  padding: EdgeInsets.all(Dimens.space_normal),
                ),
                Text(
                  Strings.APP_NAME,
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .apply(fontWeightDelta: 10, color: Colors.white),
                )
              ],
            )));
  }
}
