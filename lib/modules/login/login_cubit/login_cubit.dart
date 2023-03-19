import 'package:bloc/bloc.dart';
import 'package:consultation_gp/modules/login/login_cubit/login_states.dart';
import 'package:consultation_gp/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates>
{
LoginCubit (): super(LoginInitialState());

static LoginCubit get(context) => BlocProvider.of(context);


bool isMentor=false;
bool isOb= true;

void toggleLogin()
{
isMentor= !isMentor;
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
DioHelper.postData(
    url: '/mentor/login',
    data:
    {
      'email': email,
      'password':password
    });
}


void clientLogin()
{

}







}

