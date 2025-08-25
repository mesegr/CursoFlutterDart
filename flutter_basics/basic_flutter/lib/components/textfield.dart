import 'package:flutter/material.dart';

class TextfieldExample extends StatelessWidget {
  const TextfieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [

        SizedBox(

          height: 30,

        ),
        TextField(),
        TextField(decoration: InputDecoration(hintText: 'Pon tu email'),),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: TextField(decoration: InputDecoration(hintText: 'Pon tu email',
          border : OutlineInputBorder()))
          
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: TextField(decoration: InputDecoration(hintText: 'Pon tu email',
          prefixIcon: Icon(Icons.search),
          border : OutlineInputBorder()))
          
        ),
         Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: TextField( obscureText: true,decoration: InputDecoration(hintText: 'Pon tu contraseña',
          prefixIcon: Icon(Icons.search),
          border : OutlineInputBorder()))
          
        ),
         Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: TextField(maxLines: 3,
                           maxLength: 15,
                           decoration: InputDecoration(hintText: 'Pon tu cometario',
          border : OutlineInputBorder()))
          
        ),
      ],

    );
  }
}