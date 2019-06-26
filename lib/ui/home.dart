
import 'package:bitrise_client/res/strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(Strings.APP_NAME)
        ),
        body: Container(
          child: Center(child: Text("You've logged in", style: Theme.of(context).textTheme.body1),),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
