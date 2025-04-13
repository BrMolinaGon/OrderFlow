import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Contenedor superior (20%)
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.lightBlue,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Center(
              child: Text(
                'Bienvenido',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
          
          // Contenedor central (60%)
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            color: Colors.grey[200],
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'initial');
                },
                child: const Text(
                  'Ir a Pantalla Inicial',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          
          // Contenedor inferior (20%)
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            ),
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Brayan Molina', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 10),
                    Text('Nicolas Toledo', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}