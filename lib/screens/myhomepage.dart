import 'package:bababa/screens/segunda_page.dart';
import 'package:bababa/screens/terceira_tela.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 0;
  double _resultado = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }
  void _decrementCounter2() {
    setState(() {
      _counter2--;
    });
  }

  void _somar() {
    setState(() {
      _resultado = (_counter + _counter2).toDouble();
    });
  }
  void _subtrair() {
    setState(() {
      _resultado = (_counter - _counter2).toDouble();
    });
  }
  void _multiplicar() {
    setState(() {
      _resultado = (_counter * _counter2).toDouble();
    });
  }
  void _dividir() {
    setState(() {
      if (_counter2 != 0) {
        _resultado = _counter / _counter2;
      } else {
        _resultado = 0;
      }
    });
  }

  void _zerar(){
    setState(() {
      _resultado = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.title),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      _incrementCounter();
                    } ,
                    child: Text('Aumentar')
                ),

                ElevatedButton(
                    onPressed: (){
                      _decrementCounter();
                    } ,
                    child: Text('Diminuir')
                )
              ],
            ),

            const Text('Contador'),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      _incrementCounter2();
                    } ,
                    child: Text('Aumentar')
                ),

                ElevatedButton(
                    onPressed: (){
                      _decrementCounter2();
                    } ,
                    child: Text('Diminuir')
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      _somar();
                    } ,
                    child: Text('+')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      _subtrair();
                    } ,
                    child: Text('-')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      _multiplicar();
                    } ,
                    child: Text('x')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 20
                        ),
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      _dividir();
                    } ,
                    child: Text('/')
                ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(
                          fontSize: 20
                      ),
                    backgroundColor: Colors.red
                ),
                  onPressed: (){
                    _zerar();
                  } ,
                  child: Text('Zerar')
              ),
            ],
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Resultado: $_resultado',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),

          ],
        ),
      ),

    );
  }
}