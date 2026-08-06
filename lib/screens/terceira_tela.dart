import 'package:bababa/screens/segunda_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myhomepage.dart';

class TerceiraPage extends StatefulWidget {
  @override
  State<TerceiraPage> createState() => SegundaPageState();
}

class SegundaPageState extends State<TerceiraPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Terceira tela"),
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
                  Text("Tela 3 deu certo")
                ]

            )));
  }

}