import 'package:archdni/core/constant/routs.dart';
import 'package:archdni/view/screens/dashboard.dart';
import 'package:archdni/view/screens/onbording.dart';
import 'package:archdni/view/screens/profile.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)>
    routes = {
  AppRoutes.onbording: (context) =>const Onbording(),
  //home
  AppRoutes.home: (context) => const Dashboard(),
  AppRoutes.profile: (context) => const Profile(),
};
