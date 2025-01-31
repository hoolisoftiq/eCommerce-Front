import 'package:flutter/material.dart';

class GestionInventario extends StatefulWidget {
  const GestionInventario({super.key});

  @override
  State<GestionInventario> createState() => _GestionInventarioState();
}

class _GestionInventarioState extends State<GestionInventario> {
  // Datos de ejemplo para la tabla
  final List<Map<String, dynamic>> inventario = [
    {
      'id': 1,
      'nombre': 'Coca-Cola',
      'marca': 'Coca-Cola',
      'cantidad': 20,
      'fechaExpiracion': '2025-01-01',
      'precio': 15.0,
      'tipo': 'Refresco'
    },
    {
      'id': 2,
      'nombre': 'Pepsi',
      'marca': 'PepsiCo',
      'cantidad': 15,
      'fechaExpiracion': '2024-12-31',
      'precio': 12.0,
      'tipo': 'Refresco'
    },
  ];

  // Función para agregar un nuevo producto
  void agregarProducto() {
    // Ejemplo: Puedes abrir un formulario o un modal para capturar los datos
    setState(() {
      inventario.add({
        'id': inventario.length + 1,
        'nombre': 'Nuevo Producto',
        'marca': 'Marca Genérica',
        'cantidad': 10,
        'fechaExpiracion': '2026-01-01',
        'precio': 20.0,
        'tipo': 'Otro'
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Inventario'),
        backgroundColor: Colors.blue,
        actions: [
          ElevatedButton(
            onPressed: agregarProducto,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[300],
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Agregar Nueva Bebida'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Inventario',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Nombre')),
                  DataColumn(label: Text('Marca')),
                  DataColumn(label: Text('Cantidad')),
                  DataColumn(label: Text('Fecha de expiración')),
                  DataColumn(label: Text('Precio paquete')),
                  DataColumn(label: Text('Tipo')),
                  DataColumn(label: Text('Acción')),
                ],
                rows: inventario.map((producto) {
                  return DataRow(cells: [
                    DataCell(Text(producto['id'].toString())),
                    DataCell(Text(producto['nombre'])),
                    DataCell(Text(producto['marca'])),
                    DataCell(Text(producto['cantidad'].toString())),
                    DataCell(Text(producto['fechaExpiracion'])),
                    DataCell(Text('\$${producto['precio'].toString()}')),
                    DataCell(Text(producto['tipo'])),
                    DataCell(
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            inventario.remove(producto);
                          });
                        },
                      ),
                    ),
                  ]);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
