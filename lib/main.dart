import 'package:consultation_gp/bloc_observer/observer.dart';
import 'package:consultation_gp/layout/mentor_cubit/mentor_cubit.dart';
import 'package:consultation_gp/layout/mentor_layout.dart';
import 'package:consultation_gp/modules/login/login_screen/login.dart';
import 'package:consultation_gp/modules/mentee/mentee_profile.dart';
import 'package:consultation_gp/modules/mentee/mentee_reg/mentee_reg.dart';
import 'package:consultation_gp/modules/mentor/dashboard/mentor_dashboard.dart';
import 'package:consultation_gp/modules/mentor/incvoices/invoice_view.dart';
import 'package:consultation_gp/modules/mentor/incvoices/invoices.dart';
import 'package:consultation_gp/modules/mentor/mentor_profile/mentor_profile.dart';
import 'package:consultation_gp/modules/mentor/mentor_reg/register_screen/mentor_reg.dart';
import 'package:consultation_gp/modules/mentor/profile_setup/profile_setup.dart';
import 'package:consultation_gp/modules/mentor/reviews/reviews.dart';
import 'package:consultation_gp/modules/mentor/schedule_timings/schedule_time.dart';
import 'package:consultation_gp/network/local/cache_helper.dart';
import 'package:consultation_gp/network/remote/dio_helper.dart';
import 'package:consultation_gp/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();


  token = CacheHelper.sharedPreferences.getString('token');
  isMentor = CacheHelper.sharedPreferences.getBool('isMentor')??false;


Widget startScreen;

if(token!=null)
{
  if(isMentor)
  {
    startScreen = MenteeProfile();
  }
  else
  {
    startScreen = MentorLayout();
  }
}
else
  {
    print (token);
    startScreen = ConsultLogin();
  }


  runApp( MyApp(
    startScreen:startScreen,
  ));

}

class MyApp extends StatelessWidget {
    MyApp({Key? key, required this.startScreen,}) : super(key: key);

    Widget startScreen;

    @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> MentorCubit(),
      child: MaterialApp(
        home: Dashboard(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}





