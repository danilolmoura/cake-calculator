import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var valuePerItem = TextEditingController();
  var quantityItems = TextEditingController();
  var resultCtrl = TextEditingController();

  calculate() {
    setState(() {
      valuePerItem = double.parse(valuePerItem.text) as TextEditingController;
      print(valuePerItem);

      //quantityItems = double.parse(quantityItems.text);

      //resultCtrl = valuePerItem * quantityItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculadora de bolo'),
      ),
      body: Container(
        color: Colors.white24,
        padding:
            EdgeInsets.only(bottom: 40.0, top: 15.0, left: 40.0, right: 40.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: TextField(
                controller: valuePerItem,
                keyboardType: TextInputType.number,
                cursorColor: Colors.tealAccent,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: TextField(
                controller: quantityItems,
                keyboardType: TextInputType.number,
                cursorColor: Colors.tealAccent,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: TextField(
                enabled: false,
                controller: resultCtrl,
                keyboardType: TextInputType.number,
                cursorColor: Colors.tealAccent,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: TextField(
                enabled: false,
                controller: resultCtrl,
                keyboardType: TextInputType.number,
                cursorColor: Colors.tealAccent,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
