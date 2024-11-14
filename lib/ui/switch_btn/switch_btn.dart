import 'package:counter_app/bloc/slider/slider_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/switch/switch_bloc.dart';

class SwitchBtn extends StatelessWidget {
  const SwitchBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Btn '),

      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          BlocBuilder<SwitchBloc, SwitchState>(
            builder: (context, state) {
              return Column(
                children: [
                  state.isSwitchOn
                      ? Icon(Icons.warning, color: Colors.red,)
                      : Icon(Icons.emoji_emotions, color: Colors.yellow,),
                  SwitchListTile(value: state.isSwitchOn,
                    onChanged: (val) {
                    print('onoff value');
                      context.read<SwitchBloc>().add(SwitchEventOnOff());
                    },
                    title: Text('Are You Married ?'),),
                ],
              );
            },

          ),

          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              return Container(
                width: double.infinity,
                height: 300,
                color: Colors.red.withOpacity(state.sliderValue),

              );
            },
          ),

          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              return Slider(value:state.sliderValue, onChanged: (val) {

                print('sliderValue');
context.read<SliderBloc>().add(SliderEvent(sliderValue: val));

              },
                  activeColor: Colors.green
              );
            },
          )

        ],
      ),
    );
  }
}
