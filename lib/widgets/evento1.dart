import 'package:flutter/material.dart';
import 'package:orderflow2/screen/home_screen.dart';

class Evento1 extends StatelessWidget {
  const Evento1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContentDetailView(
      imageUrl: 'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
      dateText: '09 abril 2025',
      mainText: 'Inauguración del Año Académico 2025 con autoridades universitarias y estudiantes. Evento realizado en el auditorio principal.',
      appBarTitle: 'Evento Destacado',
    );
  }
}