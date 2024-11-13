import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<SwitchEvent>( _switch);


  }
  void _switch(SwitchEvent event , Emitter<SwitchState> emit ){
    emit(state.copyWith(isSwitch: !state.isSwitchOn));
  }
}
