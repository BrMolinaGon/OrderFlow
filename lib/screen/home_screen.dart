import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Alinear hacia la izquierda
          children: [
            Image.network(
              'https://i.imgur.com/Vr7IWdq.png', // URL de la imagen
              height: 50, // Altura de la imagen
      ),
    ],
  ),
  centerTitle: false, // Deshabilitar centrado del título
  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
  actions: [
    IconButton(
      icon: const Icon(Icons.search, color: Colors.black),
      onPressed: () {
        // Acción al presionar el icono de notificaciones
        print('Buscar');
      },
    ),
    IconButton(
      icon: const Icon(Icons.menu, color: Colors.black),
      onPressed: () {
        // Acción al presionar el icono de notificaciones
        print('Abrir menu');
      },
    ),
  ],
),     
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // CARDS DE EVENTOS DESTACADOS
            Evento1(),
            Divider(height: 40, thickness: 1, color: Colors.grey[300]),
            Evento2(),
            Divider(height: 40, thickness: 1, color: Colors.grey[300]),
            Evento3(),
          ],
        ),
      ),
    );
  }
}