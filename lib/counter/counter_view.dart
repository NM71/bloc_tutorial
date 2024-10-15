/*

COUNTER VIEW: responsible for UI

- use BlocBuilder

 */

import 'package:bloc_tutorial/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  // builds UI
  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'B L o C   C o u n t e r',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
              child: Text(
            state.toString(),
            style: const TextStyle(fontSize: 100, color: Colors.white),
          ));
        },
      ),

      // Buttons
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // increment button
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            backgroundColor: Colors.blue[900],
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // decrement button
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            backgroundColor: Colors.blue[900],
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
