import 'package:flutter/material.dart';

// My imports
import 'pages/contador_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // * Ocultar debug banner
      theme: ThemeData(),
      home: const ContadorPage(), // home: HomePage(),
    );
  }
}
