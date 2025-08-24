import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:dart_bascis/IceCream.dart';
import 'package:dart_bascis/dart_bascis.dart' as dart_bascis;

void main(List<String> arguments) {

  var chocolate = IceCream();

  var name = 'pepe';//string
  var appellido = 'fernandez';
  var age = 31;//int
  var dec = 31.1;//double
  num numero = 31.5;//soporta double y int

  name = 'ramon';//cambiar valor de variables
  //print(name + appellido);

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

//  int userage = 22;

  //if(userage>18){

  //  print('eres mayor de edad');

 // } else {

  //  print('eres menor de edad');

  //} 

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

}

//ejercicio4();

//listas

//arrays
List<String> names = ['jose','pepe','julian'];

//print(names[1]);
//print(names.last);
//print(names.first);

names[2] = 'alberto'; //cambia el valor
names.add('pikachu'); //añade un valor al final  .addall
names.remove('manolo'); // .rmeoveAt(2) .clear borra todo

//sets es como una array pero sin orden y no permite objetos duplicados (las mayusculas y minusculas se tienen en cuenta)

Set<String> namesSet = {'pepe','julian'};
namesSet.add('ferni');
namesSet.remove('pepe');
namesSet.clear();
namesSet.contains('pepe'); //devuelve un bool

//maps como array con clave y valor

Map<String,int> people = {
  'pepe':32,
  'jose':12
};

//print(people['pepe']);
people['pepe'] = 70; //modifica
people.keys;

//estructura igual a los anteriores pero con la clave

//bucles

void listLoop() {
  List<int> numbers = [2, 4, 6, 8, 9, 5];

  // for (var i = 0; i < numbers.length; i++) {
  //   print("Con el for básico tenemos: ${numbers[i]}");
  // }

  for (var pepe in numbers) {
    print("Con el for número 2 tengo $pepe");
  }

  numbers.forEach((item) {
    print("El numero es $item");
  });

  numbers.forEach(print);
}

void setLoop() {
  Set<int> numbers = {3, 4, 6, 8, 5};

  for (var element in numbers) {
    print("EL SET: $element");
  }

  numbers.forEach((item) {
    print("El numero es $item");
  });

  numbers.forEach(print);
}

void mapLoop() {
  Map<String, int> numbers = {"favNumber": 13, "birthday": 12, "address": 4};

  for (var element in numbers.entries) {
    print("La clave es ${element.key} y el valor es ${element.value}");
  }

  numbers.forEach((key, value) {
    print("La clave es $key y el valor $value");
  });
}

void exercise5() {
  /*
    📌 EJERCICIO 5: SUMA DE NÚMEROS PARES EN UNA LISTA

    ✅ Objetivo:
    Escribe un programa en Dart que tome una lista de números enteros 
    y calcule la suma de todos los números pares en la lista.

    🔹 Ejemplo:
    Entrada: [1, 2, 3, 4, 5, 6]
    Salida: La suma de los números pares es: 12

    TIP Si a un número le hacemos %2 == 0 es par.

  */

    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    var suma = 0;

    for (var i = 0; i < numbers.length; i++){

      if (numbers[i] %2 == 0){

        suma += numbers[i];

      }  

    }

    print('la suma de los numero pares es: $suma');

}

//exercise5();

void exercise6() {
  /*
    📌 EJERCICIO 6: FILTRAR PALABRAS ÚNICAS EN UN SET

    ✅ Objetivo:
    Escribe un programa en Dart que reciba una lista de palabras con 
    algunas repetidas y almacene solo las palabras únicas en un Set. 
    Luego, muestra el conjunto resultante.

    🔹 Ejemplo:
    Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil"]
    Salida: {dart, flutter, codigo, movil}
*/


List<String> imput = ["dart", "flutter", "dart", "codigo", "flutter", "movil"];
Set<String> output = {};

for (var i = 0; i < imput.length; i++) {

  if (output.contains(imput[i])) {
    
    print('${imput[i]} ya esta en el output');

  }else{

    print('${imput[i]} añadido al output');
    output.add(imput[i]);

  }
  
}

print(output);
}

//exercise6();

void exercise7() {
/*
    📌 EJERCICIO 7: CONTAR LA FRECUENCIA DE PALABRAS EN UN MAP

    ✅ Objetivo:
    Escribe un programa en Dart que reciba una lista de palabras y cuente cuántas 
    veces aparece cada una, almacenando el resultado en un Map.

    🔹 Ejemplo:
    Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"]
    Salida: {dart: 3, flutter: 2, codigo: 1, movil: 1}
*/

  List<String> imput = ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"];
  Map<String, int> output = {};

  for (var i = 0; i < imput.length; i++) {

    if (output.containsKey(imput[i])) {

      output[imput[i]] = (output[imput[i]] ?? 0) + 1;

    } else {

      output[imput[i]] = 1;

    }
  }

  print(output);

}

//exercise7();


void ejercicioExtra1() {

  // 📌 EJERCICIO EXTRA 1: ESTADÍSTICAS DE NÚMEROS
  //
  // ✅ Objetivo:
  // Crea un programa que reciba una lista de números y muestre:
  // - El número mayor y menor.
  // - La suma de todos los números.
  // - Cuántos son pares y cuántos impares.
  //
  // 🔹 Pasos sugeridos:
  // 1️⃣ Pide al usuario que ingrese varios números separados por coma (ejemplo: 1,2,3,4).
  // 2️⃣ Convierte la entrada en una lista de enteros.
  // 3️⃣ Calcula y muestra el mayor, menor, suma, cantidad de pares e impares.

  print('introduce una lista de numeros separados por comas');

  String entrada = stdin.readLineSync()!;
  List<int> numeros = entrada!
      .split(',')           // Divide el string por comas
      .map((e) => int.parse(e.trim())) // Quita espacios y convierte a int
      .toList();
  int numeroMasAlto = numeros[0];
  int numeroMasBajo = numeros[0];
  int sumaTotal = 0;
  int cantidadPares = 0;
  int cantidadImpares = 0;


  for (var i = 0; i < numeros.length; i++) {

    if (numeroMasAlto < numeros[i]){

      numeroMasAlto = numeros[i];

    }
    
  }

  for (var i = 1; i < numeros.length; i++) {

    if (numeros[i] < numeroMasBajo) {

      numeroMasBajo = numeros[i];

    }
  }

  for (var i = 0; i < numeros.length; i++) {

    sumaTotal += numeros[i];
    
  }

  for (var i = 0; i < numeros.length; i++) {

    if (numeros[i] % 2 == 0) {

      cantidadPares++;
      
    }
    
  }
  for (var i = 0; i < numeros.length; i++) {

      if (numeros[i] % 2 != 0) {

        cantidadImpares++;
        
      }
      
    }

  print('la cantidad de pares es: $cantidadPares');
  print('la cantidad de impares es: $cantidadImpares');
  print('la suma total es: $sumaTotal');
  print('el numero mas alto es: $numeroMasAlto');
  print('el numero mas bajo es: $numeroMasBajo');


  //CORRECCION DEL COPILOT
  /*
  print('introduce una lista de numeros separados por comas');
  String entrada = stdin.readLineSync()!;
  List<int> numeros = entrada
      .split(',')
      .map((e) => int.parse(e.trim()))
      .toList();

  int numeroMasAlto = numeros[0];
  int numeroMasBajo = numeros[0];
  int sumaTotal = 0;
  int cantidadPares = 0;

  for (var n in numeros) {
    if (n > numeroMasAlto) numeroMasAlto = n;
    if (n < numeroMasBajo) numeroMasBajo = n;
    sumaTotal += n;
    if (n % 2 == 0) cantidadPares++;
  }

  int cantidadImpares = numeros.length - cantidadPares;

  print('la cantidad de pares es: $cantidadPares');
  print('la cantidad de impares es: $cantidadImpares');
  print('la suma total es: $sumaTotal');
  print('el numero mas alto es: $numeroMasAlto');
  print('el numero mas bajo es: $numeroMasBajo');
  */ 
}

//ejercicioExtra1();













}