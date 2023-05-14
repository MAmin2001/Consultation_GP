import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_states.dart';
import 'package:consultation_gp/modules/mentor/appointmentes/mentor_appointmentes.dart';
import 'package:consultation_gp/modules/mentor/dashboard/mentor_dashboard.dart';
import 'package:consultation_gp/modules/mentor/incvoices/invoices.dart';
import 'package:consultation_gp/modules/mentor/mentor_profile/mentor_profile.dart';
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
  Appointments(),
  Invoice(),
  Reviews(),
  MentorProfile(),
];

bool isPinned=false;
int i =0;

void changePinIcon(int index)
{
  i=index;
  isPinned=!isPinned;
emit((ChangePinIconState()));
}







}