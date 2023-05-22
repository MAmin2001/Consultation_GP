import 'package:consultation_gp/models/mentor/profile_setup_model/profile_setup_model.dart';

abstract class ConsultStates{}

class ConsultInitialState extends ConsultStates{}

class ConsultLoadingState extends ConsultStates{}

class ConsultErrorState extends ConsultStates{}

class ConsultSuccessState extends ConsultStates{}


class ChangeBottomNavBarState extends ConsultStates{}

class ChangePinIconState extends ConsultStates{}

class ImagePickerSuccessState extends ConsultStates{}

class DatePickerSuccessState extends ConsultStates{}

class GenderSuccessState extends ConsultStates{}

class CategorySuccessState extends ConsultStates{}

class ExperienceSuccessState extends ConsultStates{}

class YearsSuccessState extends ConsultStates{}

class ProfileSetupLoadingState extends ConsultStates{}

class ProfileSetupErrorState extends ConsultStates
{
  /*final String error;

  ProfileSetupErrorState(this.error);*/
}

class ProfileSetupSuccessState extends ConsultStates
{
  final ProfileSetupModel profileSetupModel;

  ProfileSetupSuccessState(this.profileSetupModel);

}



