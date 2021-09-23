import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  final _textStyle = const TextStyle(fontSize: 25);
  final int _counter = 0;

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
            'Número de clicks',
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
        // onPressed: () => _counter++,
        onPressed: () => {},
      ),
    );
  }
}

/*  */
