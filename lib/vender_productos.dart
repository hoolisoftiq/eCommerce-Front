import 'package:flutter/material.dart';

class VenderProductos extends StatelessWidget {
  const VenderProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vender Productos'),
      ),
      body: const Center(
        child: Text(
          'Pantalla de Vender Productos',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
