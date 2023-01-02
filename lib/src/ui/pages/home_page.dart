// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> counterNotifier = ValueNotifier(0);
  final ValueNotifier<Color> flagcolorNotifier = ValueNotifier(Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: flagcolorNotifier,
            builder: (context, state, child) {
              return Container(
                margin: const EdgeInsets.all(10.0),
                color: state,
                width: 100.0,
                height: 70.0,
              );
            },
          ),
          Align(
            child: ValueListenableBuilder(
              valueListenable: counterNotifier,
              builder: (context, state, child) {
                return Text(
                  'Contador: $state',
                  style: const TextStyle(fontSize: 32.0),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterNotifier.value = counterNotifier.value + 1;
          if (counterNotifier.value % 3 == 0) {
            flagcolorNotifier.value = Colors.red;
          } else {
            flagcolorNotifier.value = Colors.green;
          }

          log(counterNotifier.value.toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
