import 'package:flutter/material.dart';
import 'package:counter/str/ui/widgets/exports.dart';

//classe stateful
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

//homepage é um state
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold cria, appBar, com uma cor e um titulo
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Flutter Layout Demo com algumas mudanças'),
      ),
      //ListView,cria uma lista linear de widget que pode se mover
      body: ListView(
        //filho 1 a imagem, com 600x240
        children: [
          Image.asset(
            'images/boblox.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          //uma linha de com um widget de icone customizavel, com espaçamento
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomIcon(
                icon: Icons.call,
                //    color: ,
                //  size: ,
              ),
              CustomIcon(
                icon: Icons.near_me,
                color: Colors.deepOrangeAccent,
                size: 40.0,
              ),
              CustomIcon(
                icon: Icons.share,
                color: Colors.lightBlue,
                size: 40.0,
              ),
            ],
          ),
          //widget customizado de um botão de ação -ação a implementar
          CustomButton(
            icon: Icons.cabin,
            color: Colors.amber,
            label: 'Casa do Kaio',
            action: () {},
          ),
          //widget com um titulo e sub titulo que pode possuir um icone
          const TitleSection(
            titulo: 'Terra Sagrada',
            subtitulo: 'Roblox 200 a.D',
            iconnexttonum: Icons.star,
            numstars: '10k',
          ),
          //uma secção com texto, com quebra de linha
          const Padding(
            padding: EdgeInsets.all(32),
            child: Text(
              'Terra Sagrada de roblox onde roblox é epic, meow meow meow emow emow emow meow auf'
              '\n"muito bom" Big Chungus',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
