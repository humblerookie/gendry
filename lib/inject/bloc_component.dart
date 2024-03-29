import 'package:bitrise_client/bloc/build_details_bloc.dart';
import 'package:bitrise_client/bloc/home_bloc.dart';
import 'package:bitrise_client/bloc/login_bloc.dart';
import 'package:bitrise_client/bloc/onboarding_profile_bloc.dart';
import 'package:bitrise_client/bloc/spash_bloc.dart';
import 'package:inject/inject.dart';

abstract class BlocComponent {
  @provide
  LoginBloc loginBloc();

  @provide
  SplashBloc splashBloc();

  @provide
  OnboardingProfileBloc onboardingProfileBloc();

  @provide
  HomeBloc homeBloc();

  @provide
  BuildDetailsBloc buildDetailsBloc();
}
