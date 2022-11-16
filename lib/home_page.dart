import 'package:flutter/material.dart';

import 'custom_container.dart';

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
          const Text('Olá mundo!'),
          const Text('Aprendendo Flutter!'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Texto 1 na Row'),
              Text('Texto 2 na Row'),
            ],
          ),
          const CustomContainer(
            text: 'Text Mutável',
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
