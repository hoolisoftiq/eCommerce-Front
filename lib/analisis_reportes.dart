import 'package:flutter/material.dart';

class AnalisisReportes extends StatelessWidget {
  const AnalisisReportes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Análisis y Reportes'),
      ),
      body: const Center(
        child: Text(
          'Pantalla de Análisis y Reportes',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
