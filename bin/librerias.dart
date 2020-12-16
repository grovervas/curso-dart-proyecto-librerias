//import 'package:librerias/librerias.dart' as librerias;
//import 'package:characters/characters.dart';
import 'package:librerias/contador.dart';

class Persona<T> {
  T id;
  String nombre;
  Persona(this.id, this.nombre);
}

void main(List<String> arguments) {
  var numeros = List<int>();
  numeros.addAll([1, 2, 4, 8]);
  print(numeros);

  List<String> palabras = List<String>();
  palabras.addAll(['Grover', 'Pedro', 'Lili']);
  print(palabras);

  List intLista = <int>[2, 3, 5, 7, 8];
  List stringLista = <String>['gato', 'perro', 'leon'];
  List doubleLista = <double>[2.3, 3.5, 7.9];

  primerElemento(intLista);
  primerElemento(stringLista);
  primerElemento(doubleLista);

  List valores = <int>[1, 2, 3, 4, 5];
  print(agregar(10, valores));

  Contador<double> doubles = Contador<double>();
  doubles.addAll([1.0, 4.0, 7.0]);
  doubles.total();

  Contador<int> ints = Contador<int>();
  ints.addAll([3, 5, 7]);
  ints.total();
}

T primerElemento<T>(List<T> lista) {
  T primer = lista[0];
  print(primer);
  return primer;
}

T agregar<T extends num>(T value, List<T> items) {
  var suma = value;
  items.forEach((value) {
    suma += value;
  });
  return suma;
}
