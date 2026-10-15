import '../models/ejercicios_modelo.dart';

// CONTROLADOR: valida lo que escribe el usuario, llama al modelo
// y arma el texto del resultado que mostrará la vista.
class EjerciciosController {
  final EjerciciosModelo modelo = EjerciciosModelo();

  // Convierte el texto a un entero positivo o lanza un error.
  int numeroPositivo(String texto, {int maximo = 999999999}) {
    final numero = int.tryParse(texto.trim());
    if (numero == null || numero <= 0) {
      throw const FormatException('Ingresa un número entero positivo.');
    }
    if (numero > maximo) {
      throw FormatException('El número es muy grande (máximo $maximo).');
    }
    return numero;
  }

  String invertir(String texto) {
    final numero = numeroPositivo(texto);
    return 'Número original: $numero\nNúmero invertido: ${modelo.invertir(numero)}';
  }

  String sumaDigitos(String texto) {
    final numero = numeroPositivo(texto);
    final suma = modelo.sumarDigitos(numero);
    return 'Suma de los dígitos de $numero: $suma\n'
        'El resultado es ${modelo.esPar(suma) ? 'par' : 'impar'}.';
  }

  String divisores(String texto) {
    final numero = numeroPositivo(texto, maximo: 10000000);
    final lista = modelo.divisores(numero);
    return 'Divisores de $numero:\n${lista.join(', ')}\n'
        'Cantidad de divisores: ${lista.length}';
  }
}
