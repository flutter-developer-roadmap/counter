import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
