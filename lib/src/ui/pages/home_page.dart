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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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

          log(counterNotifier.value.toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
