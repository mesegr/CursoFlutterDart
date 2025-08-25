import 'package:flutter/material.dart';

class ImagenExample extends StatelessWidget {
  const ImagenExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Image.network('https://media1.tenor.com/m/q0g0k0Nn9b8AAAAC/dog-blown-away.gif',height: 350,),
        Image.asset("assets/images/20240508_232024.jpg",height: 290,)



      ],
    );
  }
}