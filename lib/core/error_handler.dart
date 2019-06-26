

import 'package:bitrise_client/res/strings.dart';
import 'package:inject/inject.dart';

class ErrorHandler {

  @provide
  @singleton
  ErrorHandler();


  String getErrorMessage(Exception exception){
    return Strings.ERROR_UNKNOWN;
  }

}