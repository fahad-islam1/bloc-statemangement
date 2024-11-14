part of 'slider_bloc.dart';

 class SliderState extends Equatable{


   double sliderValue;
   SliderState({this.sliderValue=1.0});
   SliderState copyWith({double? sliderValues}){
     return SliderState(sliderValue: sliderValues?? sliderValue);
   }
  @override

  List<Object?> get props => [sliderValue];
}


