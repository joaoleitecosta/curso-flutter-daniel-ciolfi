import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  String _infText = "Informe seus dados";

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetFields() {
    weightController.text = " ";
    heightController.text = " ";
    setState(() {
      _infText = "Informe seus dados";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calcularImc() {
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text)/100;
      double imc = weight / (height * height);
      if( imc < 18.6 ) {
        _infText = "Abaixo do peso seu IMC ${imc.toStringAsPrecision(3)}";
      } else if ( imc >= 18.6 && imc < 24.9) {
        _infText = "Peso ideal seu IMC ${imc.toStringAsPrecision(3)}";
      } else if (imc >= 24.9 && imc < 29.9 ) {
        _infText = "Levemente acima do peso seu IMC ${imc.toStringAsPrecision(3)}";
      } else if ( imc >= 29.9 && imc < 34.9 ) {
        _infText = "Obesidade grau I seu IMC ${imc.toStringAsPrecision(3)}";
      } else if (imc >= 34.9 && imc < 40 ) {
        _infText = "Obesiade grau II seu IMC ${imc.toStringAsPrecision(3)}";
      }else {
        _infText = "Obesidade grau III seu IMC ${imc.toStringAsPrecision(3)}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de Imc"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 30, left: 30),
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 40.0,),
              Icon(Icons.person_outline, size: 120.00, color: Colors.deepPurple),
              SizedBox(height: 20.0,),
              TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25.0,
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),

                  labelText: "Peso (KG)",
                  labelStyle: TextStyle(
                    color: Colors.deepPurple,
                  ),
                ),
                validator: (String value) => value.isEmpty ? "Insire seu peso" : null,
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: heightController,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25.0
                ),
                decoration: InputDecoration(
                    labelText: "Altura (cm)",
                    labelStyle: TextStyle(
                      color: Colors.deepPurple,
                    )
                ),
                validator: (String value) => value.isEmpty? "Insira sua altura" : null,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: (){
                      if( _formKey.currentState.validate()) {
                        _calcularImc();
                      }
                    },
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                          color: Colors.white, fontSize: 25.0),
                    ),
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Text(
                _infText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepPurple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
