import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:60),
      child: SizedBox(
        height: double.infinity,
        child: const Row(
        
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            Text('hola jefe'),
            Text('hola jefe'),
            //Spacer(), //ocupa todo el hueco restante independientemente de los align
            Expanded(child: Text('hola jefe')), //hace que ocupe todo el espacio
            Text('hola jefe'),
            Text('hola jefe')
        
          ],
        ),
      ),
    );
  }
}