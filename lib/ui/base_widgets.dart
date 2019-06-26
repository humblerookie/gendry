
import 'package:bitrise_client/bloc/base_bloc.dart';
import 'package:bitrise_client/core/common_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseState<T extends StatefulWidget, B extends BaseBloc> extends State<T>{

  B bloc;
  var isInitialized =false;

  @override
  Widget build(BuildContext context) {
    bloc =BlocProvider.of<B>(context);
    if(!isInitialized){
      _initNavEvents();
    }
    return null;
  }

  void _initNavEvents() {
    bloc.navEvents.listen((event){
      onNavEvent(event);
    });
  }
  void onNavEvent(NavEvent event){}

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }
}