// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomContainer(
            text: 'Olá mundo!',
            backgroundColor: Colors.grey,
          ),
          const CustomContainer(
            text: 'Aprendendo Componentização!',
            backgroundColor: Colors.pink,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomContainer(
                text: 'Texto 1 na Row',
                backgroundColor: Colors.red,
              ),
              CustomContainer(
                text: 'Texto 2 na Row',
                backgroundColor: Colors.red,
              ),
            ],
          ),
          const CustomContainer(
            text: 'Text Mutável',
            backgroundColor: Colors.red,
          ),
          const CustomContainer(
            text: 'Text Mutável 2',
            backgroundColor: Colors.blue,
          ),
          const CustomContainer(
            text: 'Text Mutável 3',
            backgroundColor: Colors.green,
          ),
          ElevatedButton(
            onPressed: () {
              log('botão pressionado');
            },
            child: const Text('Press'),
          ),
          OutlinedButton(
            onPressed: () {
              log('botão pressionado');
            },
            child: const Text('Press'),
          ),
          CustomButton(
            onPressed: () {
              log('botão pressionado');
            },
            text: 'Press',
          ),
          IconButton(
            onPressed: () {
              log('botão pressionado');
            },
            icon: const Icon(Icons.person),
          ),
          FloatingActionButton.extended(
            label: const Text("botão extendido"),
            onPressed: () {
              log('botão pressionado');
            },
          ),
          InkWell(
            highlightColor: Colors.yellow,
            borderRadius: BorderRadius.circular(15.0),
            onTap: () {
              log('botão pressionado');
            },
            child: Container(
              // decoration: BoxDecoration(
              //   color: Colors.red,
              //   borderRadius: BorderRadius.circular(15.0),
              // ),
              padding: const EdgeInsets.all(8.0),
              child: const Text("Botão"),
            ),
          ),
          GestureDetector(
            onTap: () {
              log("tap");
            },
            child: Container(
              // decoration: BoxDecoration(
              //   color: Colors.red,
              //   borderRadius: BorderRadius.circular(15.0),
              // ),
              padding: const EdgeInsets.all(8.0),
              child: const Text("Botão"),
            ),
          ),
        ],
      ),
    );
  }
}
