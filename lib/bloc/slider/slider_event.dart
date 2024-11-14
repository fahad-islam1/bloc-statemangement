part of 'slider_bloc.dart';
 class SliderEvent  extends Equatable{
double sliderValue;

    SliderEvent({required this.sliderValue});
  @override

  List<Object?> get props => [sliderValue];
}
