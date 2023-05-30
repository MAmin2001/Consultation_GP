import 'package:consultation_gp/models/mentor/get_times.dart';
import 'package:consultation_gp/models/mentor/mentor_times_model/mentor_times_model.dart';
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

class DaySelectionState extends ConsultStates{}


class StoreTimesLoadingState extends ConsultStates{}

class StoreTimesErrorState extends ConsultStates
{
  /*final String error;

  ProfileSetupErrorState(this.error);*/
}

class StoreTimesSuccessState extends ConsultStates {
  final MentorStoreTimesModel storeTimesModel;

  StoreTimesSuccessState(this.storeTimesModel);
}

class GetTimesLoadingState extends ConsultStates{}

class GetTimesErrorState extends ConsultStates
{
  /*final String error;

  ProfileSetupErrorState(this.error);*/
}

class GetTimesSuccessState extends ConsultStates {
  final MentorGetTimesModel getTimesModel;

  GetTimesSuccessState(this.getTimesModel);
}

class DeleteTimesLoadingState extends ConsultStates{}

class DeleteTimesErrorState extends ConsultStates
{
  /*final String error;

  ProfileSetupErrorState(this.error);*/
}

class DeleteTimesSuccessState extends ConsultStates {
  final MentorGetTimesModel getTimesModel;

  DeleteTimesSuccessState(this.getTimesModel);
}


