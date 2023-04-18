import 'package:bloc/bloc.dart';
import 'package:consultation_gp/models/login/login_model.dart';
import 'package:consultation_gp/modules/login/login_cubit/login_states.dart';
import 'package:consultation_gp/network/local/cache_helper.dart';
import 'package:consultation_gp/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates>
{
  LoginCubit (): super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);


  late ConsultLoginModel loginModel;
bool isMentor=false;
bool isOb= true;

void toggleLogin()
{
isMentor= !isMentor;
CacheHelper.saveData(key: 'isMentor', value: isMentor);
emit(LoginToggleState());
}

void obscureLogin()
{
  isOb= !isOb;
  emit(LoginObscureState());
}



void mentorLogin({
  required String email,
  required String password
})
{
  emit(LoginLoadingState());
 DioHelper.postData(
    url: '/mentor/login',
    data:
    {
      'email': email,
      'password':password
    }).then((value)
{
  loginModel=ConsultLoginModel.fromJson(value.data);
  emit(LoginSuccessState(loginModel));
}).catchError((error)
  {
    emit(LoginErrorState(error.toString()));
    print(error.toString());

  });
}


void clientLogin({
  required String email,
  required String password
})
{
  emit(LoginLoadingState());

   DioHelper.postData(
      url: '/mentee/login',
      data:
      {
        'email': email,
        'password':password
      }).then((value)
  {
    loginModel=ConsultLoginModel.fromJson(value.data);
    print(loginModel.message);
    emit(LoginSuccessState(loginModel));
  }).catchError((error)
  {
    emit(LoginErrorState(error));
    print(error.toString());
  });
}



}

