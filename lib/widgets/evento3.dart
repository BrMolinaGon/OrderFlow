import 'package:flutter/material.dart';
import 'package:orderflow2/screen/home_screen.dart';

class Evento3 extends StatelessWidget {
  const Evento3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContentDetailView(
      imageUrl: 'https://images.unsplash.com/photo-1523240795612-9a054b0db644?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
      dateText: '20 abril 2025',
      mainText: 'Talleres de desarrollo profesional para egresados. Cupos limitados.',
      appBarColor: Colors.purple[800],
    );
  }
}