import 'package:get/get.dart';
import 'package:tour_app/views/splash_screen.dart';

import '../../views/auth/signin.dart';
import '../../views/auth/signup.dart';
import '../../views/mainhomescreen.dart';
import '../../views/onboarding.dart';

import '../../views/user_form.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboardingscreen';
const String signup = '/signup';

const String signin = '/SignIn';
const String userForm = '/UserForm';
const String privacyPolicy = '/privacy-policy-screen';
const String mainhomescreen = '/mainhomescreen';
const String supportScreen = '/support-screen';
const String privacyScreen = '/privacy-screen';

//Control page routes

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () => onboardingscreen(),
  ),
  GetPage(
    name: signup,
    page: () => SignUp(),
  ),
  GetPage(
    name: signin,
    page: () => SignIn(),
  ),
  GetPage(
    name: userForm,
    page: () => UserForm(),
  ),
  GetPage(
    name: mainhomescreen,
    page: () => MainHomeScreen(),
  ),
];
