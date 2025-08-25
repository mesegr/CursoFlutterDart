import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        ElevatedButton(onPressed: () {print('boton pulsado');},
        child: Text('boton guapo'),
        onLongPress: () {print('boton pulsado00000');},
        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.cyan),
                            foregroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 255, 255, 255))),
        ),

        OutlinedButton(onPressed: (){}, child: Text('boton outlined')),
        TextButton(onPressed: (){}, child: Text('boton text')),
        FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_sharp))

      ],

    );
  }
}