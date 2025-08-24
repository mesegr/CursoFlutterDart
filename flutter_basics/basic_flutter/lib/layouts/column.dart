import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      color: const Color.fromARGB(255, 0, 172, 154),
      width: 300, // anchura maxima del contenedor
      height: 500, // altura maxima del contenedor
      child: Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //alineacion del column
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max, // espacio que va a ocupar y de que manera
      children: [

        Text('hola jefe'),
        Text('hola jefe'),
        Text('hola jefe'),
        Text('hola jefe'),
        Text('hola jefe')

      ],

      ) 
    );

  }
}     