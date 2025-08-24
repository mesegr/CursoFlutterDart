import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text('Texto básico'), //texto basico
        Text('Texto Grande', style: TextStyle(fontSize: 24)), //text style  tamaño de letra
        Text('Texto Grande',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)), //negrita
        Text("Texto curvado", style: TextStyle(fontStyle: FontStyle.italic)), //cursiva
        Text("Texto colores",
            style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                backgroundColor: Colors.amber)), //colores
        Text(
          "Decorator",
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: 30,
              color: Colors.black,
              decorationColor: Colors.red),
        ),// decoradores
        Text(
          "Espaciado entre letras",
          style: TextStyle(
            letterSpacing: 5,
            fontSize: 20,
          ),
        ),
        Text(
          "Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo ",
          style: TextStyle(
            fontSize: 30,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer()
      ],
    );
  }
}