import 'package:flutter/material.dart';

class ListSportsScreen extends StatelessWidget {
  final List<String> techItems = List.generate(30, (index) => 'Deporte ${index + 1}');

  ListSportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tecnología'),
        backgroundColor: Colors.indigo,
        elevation: 5,
      ),
      body: ListView.builder(
        itemCount: techItems.length,
        itemBuilder: (context, index) => Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            leading: const Icon(Icons.sports_baseball, color: Colors.indigo),
            title: Text(techItems[index]),
            subtitle: Text('deporte xd ${index + 1}'),
            
          ),
        ),
      ),
    );
  }
}