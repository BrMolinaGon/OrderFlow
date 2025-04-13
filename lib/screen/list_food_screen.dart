import 'package:flutter/material.dart';

class ListFoodScreen extends StatelessWidget {
  final List<String> foods = List.generate(30, (index) => 'Comida ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Comidas'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: const Icon(Icons.fastfood, color: Colors.green),
            title: Text(foods[index]),
            onTap: () => Navigator.pushNamed(
              context,
              'detail',
              arguments: {
                'item': foods[index],
                'subtitle': 'Deliciosa comida número ${index + 1}',
                'url': 'https://source.unsplash.com/random/300x200/?food',
              },
            ),
          ),
        ),
      ),
    );
  }
}
