import 'package:consultation_gp/modules/mentor/profile_setup/ps_cubit/ps_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PSCubit extends Cubit<PSStates>
{
  PSCubit() : super(PSInitialState());

  static PSCubit get(context) => BlocProvider.of(context);


  //late ConsultLoginModel loginModel;


}