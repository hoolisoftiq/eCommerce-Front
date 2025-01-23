import 'package:flutter/material.dart';

class Facturacion extends StatelessWidget {
  const Facturacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facturación'),
      ),
      body: const Center(
        child: Text(
          'Pantalla de Facturación',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
