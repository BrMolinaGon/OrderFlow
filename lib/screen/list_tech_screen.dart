import 'package:flutter/material.dart';

class ListTechScreen extends StatelessWidget {
  final List<String> techItems = List.generate(30, (index) => 'Dispositivo ${index + 1}');

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
            leading: const Icon(Icons.smartphone, color: Colors.indigo),
            title: Text(techItems[index]),
            subtitle: Text('Modelo ${index + 1}'),
            trailing: const Icon(Icons.more_vert),
            onTap: () => Navigator.pushNamed(
              context,
              'detail',
              arguments: {
                'item': techItems[index],
                'subtitle': 'Especificaciones técnicas del modelo ${index + 1}',
                'url': 'https://source.unsplash.com/random/300x200/?tech,device',
              },
            ),
          ),
        ),
      ),
    );
  }
}