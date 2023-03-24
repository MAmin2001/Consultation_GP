import 'package:consultation_gp/bloc_observer/observer.dart';
import 'package:consultation_gp/modules/login/login_screen/login.dart';
import 'package:consultation_gp/modules/mentee/mentee_reg/mentee_reg.dart';
import 'package:consultation_gp/modules/mentor/dashboard/mentor_dashboard.dart';
import 'package:consultation_gp/modules/mentor/mentor_reg/mentor_reg.dart';
import 'package:consultation_gp/modules/mentor/mentor_show_profile/show_mentor_profile.dart';
import 'package:consultation_gp/modules/mentor/profile_setup/profile_setup.dart';
import 'package:consultation_gp/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

