import 'dart:ffi';
import 'dart:io';

import 'package:dart_bascis/dart_bascis.dart' as dart_bascis;

void main(List<String> arguments) {

  var name = 'pepe';//string
  var appellido = 'fernandez';
  var age = 31;//int
  var dec = 31.1;//double
  num numero = 31.5;//soporta double y int

  name = 'ramon';//cambiar valor de variables
  print(name + appellido);

  //tipo dinamico
  dynamic example = 'jiiji';//es lo que le eches

  //tipos fijos
  final String example2 = 'final';//no se puede cambiar el valor (timepo de ejecucion)
  const String example3 = 'final';//no se puede cambiar el valor (timepo de compilacion)

  //conversiones
  String toNumber = '20';
  int numberOK = int.parse(toNumber);
  numberOK = 20;
  String numberOKToString = numberOK.toString();

  //operaciones

  //igual que en todos los leguajes operandoi con numero


 /*
    📌 EJERCICIO 1: CALCULADORA DE EDAD

    ✅ Objetivo:
    Escribe un programa en Dart que pida al usuario su año de nacimiento
    y calcule su edad actual.

    🔹 Pasos a seguir:
    1️⃣ Pedir al usuario su año de nacimiento (leerlo como String).
    2️⃣ Convertir el año de nacimiento a un número entero.
    3️⃣ Calcular la edad restando el año de nacimiento al año actual (2025).
    4️⃣ Mostrar el resultado en un mensaje como: "Tienes X años."
  */

//utilizando stdin para pedir los valores
  void ejercicio1(){

    print('introduce tu año de nacimiento');
    var ano = stdin.readLineSync()!;

    const int anoActual = 2025;
    
    int anoNacimientoToInt = int.parse(ano);

    var edadCalculada = anoActual - anoNacimientoToInt;
    print('Tu edad es: ' + edadCalculada.toString());

  }

//  ejercicio1();


  /*
    📌 EJERCICIO 2: CALCULADORA DE PROPINA

    ✅ Objetivo:
    Escribe un programa en Dart que calcule cuánto debe pagar cada persona 
    después de dividir la cuenta y agregar una propina.

    🔹 Pasos a seguir:
    1️⃣ Pedir al usuario el total de la cuenta.
    2️⃣ Pedir el porcentaje de propina a agregar.
    3️⃣ Calcular el total a pagar sumando la propina.
    4️⃣ Pedir el número de personas para dividir la cuenta.
    5️⃣ Calcular cuánto debe pagar cada persona.
    6️⃣ Mostrar el resultado en pantalla.
  */
//pasando los valores como parametro en el metodo
  void ejercicio2(var totalCuenta, var porcentajePropina, int personasParaDividir){

    var propina = totalCuenta * porcentajePropina /100;

    var totalAPagar = totalCuenta + propina;
    var totalIndividual = totalAPagar / personasParaDividir;

    print('Cada persona debe pagar: ' + totalIndividual.toString());

  }

//  ejercicio2(100,10,5);

  //condicionales

  int userage = 22;

  if(userage>18){

    print('eres mayor de edad');

  } else {

    print('eres menor de edad');

  } 

/*
  print('introduce el numero de dia de la semana');
  int numeroDiaSemana = int.parse(stdin.readLineSync()!);

  switch(numeroDiaSemana){

    case 1:
      print('lunes');
      break;
    case 2:
      print('martes');
      break;
    case 3:
      print('miercoles');
      break;
    case 4:
      print('jueves');
      break;
    case 5:
      print('viernes');
      break;
    case 6:
      print('sabado');
      break;
    case 7:
      print('domingo');
      break;
    case 8:
      print('numero no valido');
      break;
  }
*/

    /*
    📌 EJERCICIO 3: IDENTIFICAR NÚMEROS POSITIVOS Y NEGATIVOS

    ✅ Objetivo:
    Escribe un programa en Dart que determine si un número ingresado 
    por el usuario es positivo, negativo o cero.
  */

  void ejercicio3(){

    print('introduce un numero');
    int numeroUsuario = int.parse(stdin.readLineSync()!);

    switch(numeroUsuario){

      case <0:
        print('el numero es negativo');
        break;
      case 0:
        print('el numero es 0');
        break;
      case >0:
        print('el numero es positivo');
        break;

    }

  }
//ejercicio3();


  /*
    📌 EJERCICIO 4: MESES DEL AÑO

    ✅ Objetivo:
    Escribe un programa en Dart que reciba un número entre 1 y 12 
    e imprima el nombre del mes correspondiente del año.
  */

void ejercicio4(){

  print('introduce un numero');
  int numeroUsuario = int.parse(stdin.readLineSync()!);

  switch(numeroUsuario){

    case 1:
      print('enero');
      break;
    case 2:
      print('febrero');
      break;
    case 3:
      print('marzo');
      break;
    case 4:
      print('abril');
      break;
    case 5:
      print('mayo');
      break;
    case 6:
      print('junio');
      break;
    case 7:
      print('julio');
      break;
    case 8:
      print('agosto');
      break;
    case 9:
      print('septiembre');
      break;
    case 10:
      print('octubre');
      break;
    case 11:
      print('noviembre');
      break;
    case 12:
      print('diciembre');
      break;
    case 13:
      print('numero no valido');
      break;
  }

ejercicio4();


}

  
}
