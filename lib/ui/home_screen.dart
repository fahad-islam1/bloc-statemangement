
import 'package:counter_app/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


         Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,


            children: [


              ElevatedButton(onPressed: (){}, child:  Text('Decrement')),
              BlocBuilder<CounterBloc, CounterState>(builder:( context , state){
                return   Text("${state.counterValue}", style: TextStyle(
                    fontSize: 40
                ),);
              })
          ,
              ElevatedButton(onPressed: (){

                context.read<CounterBloc>

                  (
                  
                ).add(IncrementEvent());
              }, child:  Text('Increment')),
            ],
          )
        ],
      ),

    );
  }
}
