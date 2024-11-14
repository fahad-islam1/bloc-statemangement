import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState()) {
    on<SliderEvent>((_sliderChange));


  }
  void _sliderChange(SliderEvent event, Emitter<SliderState> emit) {

      emit(state.copyWith(sliderValues: event.sliderValue));

  }


}
