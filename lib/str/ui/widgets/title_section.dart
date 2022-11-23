import 'package:flutter/material.dart';

//class composta por propriedades, metodos e constructo
class TitleSection extends StatelessWidget {
  final String texto1;
  final String texto2;
  final String startex;

  const TitleSection(
      {super.key,
      required this.texto1,
      required this.texto2,
      this.startex = '0'}); //constructo

  @override //build
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    texto1,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  texto2,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text(startex),
        ],
      ),
    );
  }
}
