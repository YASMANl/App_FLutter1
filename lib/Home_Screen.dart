import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ///espacio para definicion de variables
  int contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi aplicacion"),
        elevation: 5.0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Contador"),
          Text("$contador"),
        ],
      )),
      floatingActionButton: fun(),
    );
  }

  Widget fun() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
            onPressed: () {
            contador = 0;
            setState(() {});
            print(contador);
          },
        ),
        FloatingActionButton(

          child: Icon(Icons.remove),
          onPressed: () {
            contador--;
            setState(() {});
            print(contador);
          },
        ),
        FloatingActionButton(
           child: Icon(Icons.add),
          onPressed: () {
            contador++;
            setState(() {});
            print(contador);
          },
        ),
      ],
    );
  }
}