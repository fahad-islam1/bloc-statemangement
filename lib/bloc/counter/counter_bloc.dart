import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';




class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc (): super(CounterState()
  ) {
    on<IncrementEvent>(_increment);
    on<DecrementEvent>(decrement);
  }



  void  _increment(IncrementEvent event ,Emitter<CounterState> emit ){
emit(state.copyWith(counterValue: state.counterValue +1));
  }
  void  decrement(DecrementEvent event ,Emitter<CounterState> emit ){
emit(state.copyWith(counterValue: state.counterValue -1));
  }
}

