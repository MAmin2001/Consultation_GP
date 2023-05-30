import 'dart:io';

import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_states.dart';
import 'package:consultation_gp/layout/mentor/mentor_layout/mentor_layout.dart';
import 'package:consultation_gp/models/mentor/get_times.dart';
import 'package:consultation_gp/models/mentor/mentor_times_model/mentor_times_model.dart';
import 'package:consultation_gp/models/mentor/profile_setup_model/profile_setup_model.dart';
import 'package:consultation_gp/modules/mentor/appointmentes/mentor_appointmentes.dart';
import 'package:consultation_gp/modules/mentor/dashboard/mentor_dashboard.dart';
import 'package:consultation_gp/modules/mentor/incvoices/invoices.dart';
import 'package:consultation_gp/modules/mentor/mentor_profile/mentor_profile.dart';
import 'package:consultation_gp/modules/mentor/reviews/view_reviews.dart';
import 'package:consultation_gp/network/local/cache_helper.dart';
import 'package:consultation_gp/network/remote/dio_helper.dart';
import 'package:consultation_gp/shared/constants.dart';
//import 'package:consultation_gp/modules/mentor/reviews/reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


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
int iPin =0;
void changePinIcon(int index)
{
  iPin=index;
  isPinned=!isPinned;
emit((ChangePinIconState()));
}


  File file = File("") ;
 Future imagePicker()async
{
    final myFile = await ImagePicker().pickImage(source: ImageSource.gallery);
      file = File(myFile!.path) ;
      print(file.toString());
      emit(ImagePickerSuccessState());
}


  DateTime date = DateTime.now();
  String? dateController;
  Future datePicker({
  required BuildContext context
})async {
  DateTime? newDate = await showDatePicker(
  context: context,
  initialDate: date,
  firstDate: DateTime(1950),
  lastDate: DateTime(2100));
  if(newDate == null) return;
  date=newDate;
  print(date);
  dateController="${date.year}/${date.month}/${date.day}";
  print(dateController);
  emit(DatePickerSuccessState());

}


  var selectedGender;
void genderDropDown({
   Object? value
})
{
  selectedGender=value;
  emit(GenderSuccessState());
}


  var selectedCategory;
  void categoryDropDown({
    Object? value
  })
  {
    selectedCategory=value;
    emit(CategorySuccessState());

  }


  var selectedExperience;
  void experienceDropDown({
    Object? value
  })
  {
    selectedExperience=value;
    emit(ExperienceSuccessState());

  }


  var selectedYears;
  void yearsDropDown({
    Object? value
  })
  {
    selectedYears=value;
    emit(YearsSuccessState());

  }


  late ProfileSetupModel profileSetupModel;

  void profileSetup({
    required String jobTitle,
    required String company,
    required String skills,
    required String country,
    required String city,
    required String address,
    required String zipCode,
    required String bio,
    required BuildContext context

  })async
  {
    emit(ProfileSetupLoadingState());
    var response=
    await DioHelper.postData(
        url: '/mentor/profile',
        tkn: CacheHelper.sharedPreferences.getString('token'),
        data:
        {
          'job_title': jobTitle,
          'company':company,
          'category':selectedCategory.toString(),
          'skills':skills,
          'years_of_experience':selectedYears.toString(),
          'gender':selectedGender.toString(),
          'country':country,
          'city':city,
          'address':address,
          'zip_code':zipCode,
          'birth_date':dateController,
          'bio':bio,
          'experience':selectedExperience.toString(),
        }).then((value)
    {
      profileSetupModel=ProfileSetupModel.fromJson(value.data);
      if(profileSetupModel.success==true)
      {
        emit(ProfileSetupSuccessState(profileSetupModel));
         saveProfileData(model: profileSetupModel).then((value) =>
         {
           Navigator.of(context).pushReplacement(MaterialPageRoute(
         builder: (context) => MentorLayout(),))});
      }
      else if(profileSetupModel.success==false)
      {
      emit(ProfileSetupErrorState());
      Map<String,dynamic> errors = value.data['errors'];
      errors.forEach((key, value) {
      for (int i = 0; i < value.length; i++) {
      Fluttertoast.showToast(
      msg: value[i],
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
      );
      }
      });
      }
    });

  }

  Future<void> saveProfileData({
  required ProfileSetupModel model
})async
  {
    await CacheHelper.sharedPreferences.setString( 'job_title',  profileSetupModel.data!.jobTitle.toString());
    await CacheHelper.sharedPreferences.setString( 'company',  profileSetupModel.data!.company.toString());
    await CacheHelper.sharedPreferences.setString( 'category',  profileSetupModel.data!.category.toString());
    await CacheHelper.sharedPreferences.setString( 'skills',  profileSetupModel.data!.skills.toString());
    await CacheHelper.sharedPreferences.setInt( 'years_of_experience',  profileSetupModel.data!.yearsOfExperience!);
    await CacheHelper.sharedPreferences.setString( 'gender',  profileSetupModel.data!.gender.toString());
    await CacheHelper.sharedPreferences.setString( 'country',  profileSetupModel.data!.country.toString());
    await CacheHelper.sharedPreferences.setString( 'city',  profileSetupModel.data!.city.toString());
    await CacheHelper.sharedPreferences.setString( 'address',  profileSetupModel.data!.address.toString());
    await CacheHelper.sharedPreferences.setString( 'zip_code',  profileSetupModel.data!.zipCode.toString());
    await CacheHelper.sharedPreferences.setString( 'birth_date',  profileSetupModel.data!.birthDate.toString());
    await CacheHelper.sharedPreferences.setString( 'bio',  profileSetupModel.data!.bio.toString());
    await CacheHelper.sharedPreferences.setString( 'experience',  profileSetupModel.data!.experience.toString());
  }
  ProfileData? mentorProfileModel;
  Future<void> getProfileData()async
  {
    mentorProfileModel=await ProfileData(
        address:'${CacheHelper.sharedPreferences.getString( 'address')}',
      bio: CacheHelper.sharedPreferences.getString( 'bio').toString(),
      birthDate: CacheHelper.sharedPreferences.getString( 'birth_date').toString(),
      category: CacheHelper.sharedPreferences.getString( 'category').toString(),
      city: CacheHelper.sharedPreferences.getString( 'city').toString(),
      company: CacheHelper.sharedPreferences.getString( 'company').toString(),
      country: CacheHelper.sharedPreferences.getString( 'country').toString(),
      experience: CacheHelper.sharedPreferences.getString( 'experience').toString(),
      gender:  CacheHelper.sharedPreferences.getString( 'gender').toString(),
      jobTitle: CacheHelper.sharedPreferences.getString( 'job_title').toString(),
      skills: CacheHelper.sharedPreferences.getString( 'skills').toString(),
      yearsOfExperience: CacheHelper.sharedPreferences.getInt( 'years_of_experience'),
      zipCode: CacheHelper.sharedPreferences.getString( 'zip_code').toString()
    );
     print(mentorProfileModel.toString());
  }


  int iDay =0 ;
  String selectedDay='su';
  void daySelection(int index)
  {
    iDay=index;
    print(iDay);
    switch(iDay) {
      case 0: { selectedDay='su'; }
      break;

      case 1: {  selectedDay='mo' ;}
      break;

      case 2: {  selectedDay = 'tu' ;}
      break;

      case 3: {  selectedDay = 'we' ;}
      break;

      case 4: {  selectedDay = 'th' ;}
      break;

      case 5: {  selectedDay = 'fr'; }
      break;

      case 6: {  selectedDay = 'sa' ;}
      break;
    }
    print(selectedDay);
    emit(DaySelectionState());
  }




  late MentorStoreTimesModel storeTimesModel;
  void storeTimes({
    required String from,
    required String to,

  })
  {
    emit(StoreTimesLoadingState());

    DioHelper.postData(
        url: '/mentor/times',
        tkn: CacheHelper.sharedPreferences.getString('token'),
        data:
        {
          'day': selectedDay.toString().trim(),
          'from':from,
          'to':to

        }).then((value)
    {
      storeTimesModel=MentorStoreTimesModel.fromJson(value.data);
      if(storeTimesModel.success==true)
      {
        emit(StoreTimesSuccessState(storeTimesModel));
        Fluttertoast.showToast(
            msg: storeTimesModel.message!,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 5,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0
        );
        print(storeTimesModel.message);
        print(storeTimesModel.data!.day);
      }
      else if(storeTimesModel.success==false) {
        emit(StoreTimesErrorState());
        Fluttertoast.showToast(
            msg: storeTimesModel.message!,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 5,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        print(storeTimesModel.message);
      }
    });
    /*.catchError((error)
  {
    emit(LoginErrorState(*//*error*//*));
    print(error.toString());
  });*/
  }

 MentorGetTimesModel? getTimesModel;
  void getTimes()async
  {
    emit(GetTimesLoadingState());
    await DioHelper.getData(
      url: '/mentor/times',
      tkn: CacheHelper.sharedPreferences.getString('token'),
    ).then((value)
    {
      getTimesModel=MentorGetTimesModel.fromJson(value.data);
      print(getTimesModel!.data![0].day);
      emit(GetTimesSuccessState(getTimesModel!));
    }).catchError((error)
    {
      emit(GetTimesErrorState());
      print(error.toString());
    });

  }

  void deleteTime({
    required String timeID,
  })
  {
    emit(DeleteTimesLoadingState());

    DioHelper.postData(
        url: '/mentor/times$timeID',
        tkn: CacheHelper.sharedPreferences.getString('token'),
        ).then((value)
    {
      getTimesModel=MentorGetTimesModel.fromJson(value.data);
      if(getTimesModel!.success==true)
      {
        emit(DeleteTimesSuccessState(getTimesModel!));
        Fluttertoast.showToast(
            msg: getTimesModel!.message!,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 5,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0
        );
        print(getTimesModel!.message);
        print(getTimesModel!.success);
      }
      else if(storeTimesModel.success==false) {
        emit(DeleteTimesErrorState());
        Fluttertoast.showToast(
            msg: getTimesModel!.message!,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 5,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        print(getTimesModel!.message);
      }
    });
    /*.catchError((error)
  {
    emit(LoginErrorState(*//*error*//*));
    print(error.toString());
  });*/
  }


  



}