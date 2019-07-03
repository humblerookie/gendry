import 'package:bitrise_client/bloc/login_bloc.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:bitrise_client/core/initializer.dart';
import 'package:bitrise_client/core/login_entities.dart';
import 'package:bitrise_client/res/colors.dart';
import 'package:bitrise_client/res/dimensions.dart';
import 'package:bitrise_client/res/images.dart';
import 'package:bitrise_client/res/strings.dart';
import 'package:bitrise_client/ui/onboarding/onboarding_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main.dart';
import '../base_widgets.dart';

class LoginScreen extends StatefulWidget {
  final String title;

  const LoginScreen({Key key, this.title}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();


}

class _LoginScreenState extends State<LoginScreen> {

  LoginBloc _bloc;

  _LoginScreenState() {
    _bloc = AppInjector.appComponent.loginBloc();
    initNavEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(Strings.LOGIN),
        ),
        body: BlocProvider<LoginBloc>(
          bloc: _bloc,
          child: LoginContent(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
  void initNavEvents() {
    _bloc.navEvents.listen((event){
      switch(event.runtimeType){
        case NextScreen:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => OnboardingProfileScreen()),
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

class LoginContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginBloc _bloc = BlocProvider.of<LoginBloc>(context);
    return Container(
        child: BlocBuilder<LoginEvent, LoginData>(
            bloc: _bloc,
            builder: (BuildContext context, LoginData data) {
              if (data.state ==LoadState.LOADING) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return _Body();
              }
            }));
  }
}

class _Body extends StatelessWidget {

  final TextEditingController myController = TextEditingController();

  _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimens.keyline_main),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              Images.logo,
              height: Dimens.image_normal,
              width: Dimens.image_normal,
              color: Colors.white,
            ),
            SizedBox(height: Dimens.space_xxlarge),
            TokenField(textEditingController: myController),
            SizedBox(height: Dimens.space_xxxlarge),
            _SaveButton(tokenController: myController,),
          ],
        ),
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  final TextEditingController tokenController;
  const _SaveButton({
    Key key, this.tokenController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _bloc = BlocProvider.of<LoginBloc>(context);
    return Row(
      children: <Widget>[
        Expanded(
            child: RaisedButton(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(4.0)),
          padding: EdgeInsets.all(Dimens.keyline_main),
          child: Text(
            Strings.SAVE.toUpperCase(),
            style: TextStyle(
                color: Colors.white,
                fontSize: Dimens.text_medium,
                fontWeight: FontWeight.w700),
          ),
          color: AppColors.accentColor,
          onPressed: () {
            _bloc.dispatch(SaveToken(tokenController.text));
          },
        ))
      ],
    );
  }
}

class TokenField extends StatelessWidget {
  final TextEditingController textEditingController;

  TokenField({this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: true,
        controller: textEditingController,
        style: TextStyle(color: Colors.white, fontSize: Dimens.text_large),
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.white70),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70, width: 3),
            ),
            labelStyle:
                TextStyle(color: Colors.white70, fontSize: Dimens.text_medium),
            labelText: Strings.TOKEN));
  }
}
