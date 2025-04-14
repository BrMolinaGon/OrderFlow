
import 'package:flutter/material.dart';
class ListVehiclesScreen extends StatelessWidget {
  final List<String> vehicles = List.generate(30, (index) => 'Vehículo ${index + 1}');

  ListVehiclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Vehículos'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.separated(
        itemCount: vehicles.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.directions_car, color: Colors.blueGrey),
          title: Text(vehicles[index]),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.pushNamed(
            context,
            'detail',
            arguments: {
              'item': vehicles[index],
              'subtitle': 'Vehículo modelo ${index + 1}',
              'url': 'https://source.unsplash.com/random/300x200/?car',
            },
          ),
        ),
      ),
    );
  }
}