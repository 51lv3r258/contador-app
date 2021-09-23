import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

// * Guión bajo para hacerlo privado
class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = const TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Contador'),
        centerTitle: true,
        elevation: 10.0,
        // foregroundColor: const Color.fromRGBO(3, 237, 249, 1),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Contador: Número de clicks',
            style: _textStyle,
          ),
          Text(
            '$_counter',
            style: _textStyle,
          )
        ],
      )),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => setState(() {
                _counter++;
              })),
    );
  }
}
