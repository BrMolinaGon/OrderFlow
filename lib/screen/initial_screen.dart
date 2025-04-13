import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Inicial'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: const EdgeInsets.all(40),
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.food_bank),
              label: const Text('Comida'),
              onPressed: () => Navigator.pushNamed(context, 'list_food'),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.directions_car),
              label: const Text('Vehículos'),
              onPressed: () => Navigator.pushNamed(context, 'list_vehicles'),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.computer),
              label: const Text('Tecnología'),
              onPressed: () => Navigator.pushNamed(context, 'list_tech'),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.sports_baseball),
              label: const Text('Deportes'),
              onPressed: () => Navigator.pushNamed(context, 'list_sports'),
            ),
          ],
        ),
      ),
    );
  }
}