import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contador de Pessoas",
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas = 0;
  String _infTexto = "Pode Entrar!";
  void _adicionarPessoa(int delta) {
    setState((){
      _pessoas += delta;

      if(_pessoas < 0) {
        _infTexto = "Mundo Invertido";
      }else if ( _pessoas < 10 ) {
        _infTexto = "Pode Entrar";
      }else {
        _infTexto = "Lotado";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('images/fundo.jpg', fit: BoxFit.cover,height: 1000,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Pessas: $_pessoas',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 56,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        '+1',
                        style: TextStyle(fontSize: 45.0, color: Colors.white),
                      ),
                      onPressed: () => _adicionarPessoa(1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        '-1',
                        style: TextStyle(fontSize: 45, color: Colors.white),
                      ),
                      onPressed: () =>_adicionarPessoa(-1),
                  ),
                  ),
                ],
              ),
              Text(
                _infTexto,
                style: TextStyle(
                    fontSize: 40, fontStyle: FontStyle.italic, color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
