import 'package:bababa/screens/terceira_tela.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myhomepage.dart';

class SegundaPage extends StatefulWidget {
  @override
  State<SegundaPage> createState() => SegundaPageState();
}

class SegundaPageState extends State<SegundaPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Segunda tela"),
      ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage(title: "Navegou")));
                },
              ),
              ListTile(
                title: Text("Segunda Tela"),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SegundaPage()));
                },
              ),
              ListTile(
                title: Text("Terceira Tela"),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TerceiraPage()));
                },
              ),
            ],
          ),
        ),

        body: Center(
      child: Column(
        children: [
          Text("Tela 2 deu certo")
        ]

    )));
  }

}