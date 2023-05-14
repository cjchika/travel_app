import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/services/data_services.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async {
    try{
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    }catch(e){
      print(e);
    }
  }
}






