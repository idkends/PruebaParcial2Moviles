import 'package:flutter/material.dart';

// VISTA: pantalla que usan los tres ejercicios.
// Cambia solo el título, la instrucción y la función que calcula.
class EjercicioPantalla extends StatefulWidget {
  final String titulo;
  final String instrucciones;
  final String Function(String) calcular;

  const EjercicioPantalla({
    super.key,
    required this.titulo,
    required this.instrucciones,
    required this.calcular,
  });

  @override
  State<EjercicioPantalla> createState() => _EjercicioPantallaState();
}

class _EjercicioPantallaState extends State<EjercicioPantalla> {
  final control = TextEditingController();
  String resultado = '';

  void calcular() {
    FocusScope.of(context).unfocus();
    try {
      setState(() => resultado = widget.calcular(control.text));
    } on FormatException catch (error) {
      setState(() => resultado = error.message);
    }
  }

  // Borra el número ingresado y el resultado.
  void limpiar() {
    control.clear();
    setState(() => resultado = '');
  }

  @override
  void dispose() {
    control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(widget.titulo)),
    body: SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(widget.instrucciones),
          const SizedBox(height: 16),
          TextField(
            controller: control,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => calcular(),
            decoration: const InputDecoration(
              labelText: 'Número entero positivo',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 14),
          ElevatedButton(onPressed: calcular, child: const Text('Calcular')),
          TextButton(onPressed: limpiar, child: const Text('Limpiar')),
          const SizedBox(height: 10),
          Text(resultado, style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Volver a la bienvenida'),
          ),
        ],
      ),
    ),
  );
}
