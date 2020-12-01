import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:royal_police_band/general_user/screens/code_verification.dart';
import 'package:royal_police_band/general_user/screens/complete_profile.dart';
import 'package:royal_police_band/general_user/screens/job_details.dart';
import 'package:royal_police_band/general_user/screens/jobs.dart';
import 'package:royal_police_band/general_user/screens/phone_number.dart';
import 'package:royal_police_band/general_user/screens/welcome.dart';
import 'package:royal_police_band/models/user.dart';
import 'package:royal_police_band/services/auth.dart';

import 'general_user/screens/all_members.dart';


void main () {
  runApp(RoyalPoliceBandApp());
}

class RoyalPoliceBandApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp (
        routes: {
          '/': (context) => Welcome(),
          '/phone_number': (context) => PhoneNumber(),
          '/code_verification': (context) => CodeVerification(),
          '/complete_profile': (context) => CompleteProfile(),
          '/jobs': (context) => Jobs(),
          '/job_details': (context) => JobDetails(),
//        '/all_members': (context) => AllMembers()
        },
        title: 'Royal Police Band',
        debugShowCheckedModeBanner: false,
        theme: ThemeData (
          primaryColor: Colors.blueAccent,
          fontFamily: 'CrimsontText',
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
      ),
    );
  }
}
