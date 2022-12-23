import 'package:counter/str/ui/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //o trabalho do widget é implemntar um metodo build()
  Widget build(BuildContext context) {
    // retorna o Widget MaterialApp()
    return const MaterialApp(
      //MaterialApp combina outro widget, chama home do tipo Widget
      home: HomePage(),
    );
  }
}
