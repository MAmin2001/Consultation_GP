import 'package:consultation_gp/modules/login/login_screen/login.dart';
import 'package:consultation_gp/modules/mentor/mentor_reg/mentor_reg.dart';
import 'package:consultation_gp/modules/mentor/profile_setup/profile_setup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileSetup(),
      debugShowCheckedModeBanner: false,
    );
  }
}

