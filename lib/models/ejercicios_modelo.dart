// MODELO: aquí está la lógica de cada ejercicio (sin pantallas).
class EjerciciosModelo {
  // Ejercicio 8: invertir los dígitos de un número.
  // Se convierte el número a texto y se recorre desde el último
  // dígito hasta el primero, juntándolos en un texto nuevo.
  String invertir(int numero) {
    String texto = numero.toString();
    String invertido = '';
    for (int i = texto.length - 1; i >= 0; i--) {
      invertido = invertido + texto[i];
    }
    return invertido;
  }

  // Ejercicio 9: sumar los dígitos.
  // Se recorre cada dígito del texto, se convierte a número y se suma.
  int sumarDigitos(int numero) {
    String texto = numero.toString();
    int suma = 0;
    for (int i = 0; i < texto.length; i++) {
      suma = suma + int.parse(texto[i]);
    }
    return suma;
  }

  // Un número es par si al dividirlo entre 2 el residuo es 0.
  bool esPar(int numero) {
    return numero % 2 == 0;
  }

  // Ejercicio 7: buscar los divisores.
  // Se prueba cada número desde 1 hasta el número ingresado;
  // si el residuo de la división es 0, es divisor y se guarda.
  List<int> divisores(int numero) {
    List<int> lista = [];
    for (int i = 1; i <= numero; i++) {
      if (numero % i == 0) {
        lista.add(i);
      }
    }
    return lista;
  }
}
