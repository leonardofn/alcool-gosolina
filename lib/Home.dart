import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("assets/images/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Saiba qual a melhor opção para abastecer seu veículo."),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço álcool, ex: 1.49",
              ),
              style: TextStyle(
                fontSize: 22,
              ),
              controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço gasolina, ex: 3.49",
              ),
              style: TextStyle(
                fontSize: 22,
              ),
              controller: _controllerGasolina,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
