import 'package:flutter/material.dart';

//class composta por propriedades, metodos e constructo
class TitleSection extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String numstars;
  final IconData? iconnexttonum; //esse icone pode ou não ser usado

  const TitleSection(
      {super.key,
      required this.titulo,
      required this.subtitulo,
      this.iconnexttonum,
      this.numstars = '0'}); //constructo

  @override //build
  Widget build(BuildContext context) {
    //em um container
    return Container(
      padding: const EdgeInsets.all(32),
      //em fila
      child: Row(
        //com um filho ue possui se expande
        children: [
          Expanded(
            //que possui uma coluna, alinhada ao inicio do cruzamento dos axis
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //como filho um container com padding apenas abaixo
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  //texto como filho,com um estilo pre definido, e negrito
                  child: Text(
                    titulo,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                //text subtitulo
                Text(
                  subtitulo,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          //icone pode existir ou não, possui uma cor padrão *
          Icon(
            iconnexttonum,
            color: Colors.yellow,
          ),
          Text(numstars),
        ],
      ),
    );
  }
}
