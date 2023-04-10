import 'package:bloc/bloc.dart';
import 'package:consultation_gp/models/login/login_model.dart';
import 'package:consultation_gp/modules/mentor/mentor_reg/register_cubit/register_states.dart';
import 'package:consultation_gp/network/local/cache_helper.dart';
import 'package:consultation_gp/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterStates>
{
  RegisterCubit (): super(RegisterInitialState());

static RegisterCubit get(context) => BlocProvider.of(context);


late ConsultLoginModel loginModel;
bool isOb= true;



void obscureRegister()
{
  isOb= !isOb;
  emit(RegisterObscureState());
}



void mentorRegister({
  required String fName,
  required String lName,
  required String email,
  required String pNumber,
  required String password,
  required String cPassword,

})
{
  emit(RegisterLoadingState());
 DioHelper.postData(
    url: '/mentor/register',
    data:
    {
      'fname': fName,
      'lname':lName,
      'email':email,
      'phone':pNumber,
      'password':password,
      'password_confirmation':cPassword,

    }).then((value)
{
  loginModel=ConsultLoginModel.fromJson(value.data);
  emit(RegisterSuccessState(loginModel));
}).catchError((error)
  {
    emit(RegisterErrorState(error.toString()));
    print(error.toString());

  });
}


void clientRegister({
  required String fName,
  required String lName,
  required String userName,
  required String pNumber,
  required String email,
  required String password,
  required String cPassword,
})
{
  emit(RegisterLoadingState());

   DioHelper.postData(
      url: '/mentee/register',
      data:
      {
        'fname': fName,
        'lname':lName,
        'username':userName,
        'email':email,
        'phone':pNumber,
        'password':password,
        'password_confirmation':cPassword,
      }).then((value)
  {
    loginModel=ConsultLoginModel.fromJson(value.data);
    print(loginModel.message);
    emit(RegisterSuccessState(loginModel));
  }).catchError((error)
  {
    emit(RegisterErrorState(error));
    print(error.toString());
  });
}



}

