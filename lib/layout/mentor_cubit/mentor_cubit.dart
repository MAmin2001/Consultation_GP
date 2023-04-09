import 'package:consultation_gp/layout/mentor_cubit/mentor_states.dart';
import 'package:consultation_gp/modules/mentor/bookings/mentor_bookings.dart';
import 'package:consultation_gp/modules/mentor/dashboard/mentor_dashboard.dart';
import 'package:consultation_gp/modules/mentor/incvoices/invoices.dart';
import 'package:consultation_gp/modules/mentor/mentor_show_profile/show_mentor_profile.dart';
import 'package:consultation_gp/modules/mentor/reviews/reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MentorCubit extends Cubit<ConsultStates> {
  MentorCubit() : super(ConsultInitialState());

  static MentorCubit get(context) => BlocProvider.of(context);



int currentIndex=0;
void changeBottomNavIndex(int index)
{
  currentIndex=index;
  emit(ChangeBottomNavBarState());
}

List<Widget> screens=
[
  Dashboard(),
  Bookings(),
  Invoice(),
  Reviews(),
  ShowMentorProfile(),
];







}