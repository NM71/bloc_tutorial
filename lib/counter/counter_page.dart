/*

COUNTER PAGE: responsible for providing the CounterCubit to CounterView (UI)

- use BlocProvider

 */

import 'package:bloc_tutorial/counter/counter_cubit.dart';
import 'package:bloc_tutorial/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // bloc provider
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          if (state == 10) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.blue[900],
                content: const Text(
                  '10 Reached!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          } else if (state < 0) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.blue[900],
                content: const Text(
                  'Going Negative, Stop Now!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          }
        },
        // counter View (UI)
        child: const CounterView(),
      ),
    );
  }
}
