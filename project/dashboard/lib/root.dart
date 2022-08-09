import 'package:dashboard/view/screens/auth/emailverifycation.dart';
import 'package:dashboard/view/screens/auth/forgetpassword/forgetpasswordpage.dart';
import 'package:dashboard/view/screens/auth/forgetpassword/resetpassword.dart';
import 'package:dashboard/view/screens/auth/forgetpassword/verifycode.dart';
import 'package:dashboard/view/screens/homeformtwo.dart';
import 'package:dashboard/view/screens/auth/loggin.dart';
import 'package:dashboard/view/screens/auth/signup.dart';
import 'package:dashboard/view/screens/home.dart';
import 'package:dashboard/view/screens/signupdone.dart';
import 'package:flutter/material.dart';
import 'core/constant/routs.dart';

Map<String, Widget Function(BuildContext)>
    routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.signup: (context) => const Signup(),
  AppRoutes.forgetPassword: (context) =>
      const ForgetPassword(),
  AppRoutes.verifyCode: (context) =>
      const VerifyCode(),
  AppRoutes.resetPassword: (context) =>
      const ResetPassword(),
  AppRoutes.emailVerify: (context) =>
      const VerifyEmail(),
  AppRoutes.home: (context) => const Home(),
  AppRoutes.homeFormTwo: (context) =>
      const HomeFormTwo(),
  AppRoutes.signupdone: (context) =>
      const SignUpDone(),
};
