import 'package:basic_flutter/components/buttons.dart';
import 'package:basic_flutter/components/imagenes.dart';
import 'package:basic_flutter/components/text.dart';
import 'package:basic_flutter/components/textfield.dart';
import 'package:basic_flutter/layouts/column.dart';
import 'package:basic_flutter/layouts/row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(

          title: Text('mi pedazo de app'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          actions: [

            IconButton(onPressed: (){} , icon: Icon(Icons.abc))

          ],

        ),
        body: ButtonExample()
        ),
      );
  }
}
