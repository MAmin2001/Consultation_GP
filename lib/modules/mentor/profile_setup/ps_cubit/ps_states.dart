abstract class PSStates{}

class PSInitialState extends PSStates{}

class PSLoadingState extends PSStates{}

class PSSuccessState extends PSStates
{
 // final ConsultLoginModel loginModel;

  //PSSuccessState(this.loginModel);
}

class PSErrorState extends PSStates
{
  final String error;

  PSErrorState(this.error);}