import 'package:flutter/material.dart';

import 'core/initializer.dart';
import 'res/colors.dart';
import 'res/strings.dart';
import 'ui/onboarding/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isInitialized = false;

  @override
  void initState() {
    super.initState();
    AppInjector.init().then((onValue) {
      setState(() {
        isInitialized = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Strings.APP_NAME,
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.getPrimaryColor(),
            primarySwatch: AppConstants.appTheme,
            accentColor: AppColors.accentColor,
            textTheme: Theme.of(context).textTheme.apply(
                  displayColor: Colors.white70,
                  bodyColor: Colors.white70,
                ),
            fontFamily: 'Omnes'),
        home: _pageToDisplay);
  }

  Widget get _pageToDisplay {
    if (!isInitialized) {
      return _loadingView;
    } else {
      return _nextView;
    }
  }

  Widget get _loadingView {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget get _nextView {
    return SplashScreen();
  }
}
