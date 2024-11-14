part of 'switch_bloc.dart';

 class SwitchState extends Equatable {

   bool isSwitchOn;
   SwitchState({this.isSwitchOn=false});
  SwitchState copyWith({bool ? isSwitch}){
    return SwitchState(isSwitchOn: isSwitch?? this.isSwitchOn);
  }
  @override
  List<Object> get props => [isSwitchOn];
}

// final class SwitchInitial extends SwitchState {
//   @override
//   List<Object> get proaps => [];
// }
