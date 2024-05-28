import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';
import 'cuonter_cubit.dart';


class Counter_screen extends StatelessWidget {
  const Counter_screen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create:(context)=>CounterCubit(),
      child: BlocBuilder<CounterCubit,CounterState>(
          builder:(context,state){
            return Scaffold(
              appBar: AppBar(

                backgroundColor: Theme.of(context).colorScheme.inversePrimary,

                title: const Text('counter'),
              ),
              body: Center(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed:BlocProvider.of<CounterCubit>(context).incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            );
          }

      ),
    );
  }
}
