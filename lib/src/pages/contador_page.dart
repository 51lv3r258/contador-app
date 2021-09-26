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
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Contador: Número de clicks',
                  style: _textStyle,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '$_counter',
                  style: _textStyle,
                  textAlign: TextAlign.center,
                )
              ]),
        )),
        /* floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, */
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(
          width: 32,
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero_outlined),
          onPressed: _resetCounter,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: _decreaseCounter,
        ),
        const SizedBox(
          width: 12.0,
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: _increaseCounter,
        ),
      ],
    );
  }

  void _increaseCounter() => setState(() => _counter++);
  void _decreaseCounter() => setState(() => _counter--);
  void _resetCounter() => setState(() => _counter = 0);
}
