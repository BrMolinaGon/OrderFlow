import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_noticias.dart';

class Noticia3 extends StatelessWidget {
  const Noticia3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UaversCard(
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2025/04/IMG_3871-scaled.jpg',
      title: 'Estudiantes y egresados de la U. Autónoma de Chile entre los 109 Jóvenes Talentos de La Araucanía',
      actionText: 'Conoce más 😊',
      onActionTap: () {
        print('Navegar a detalles del evento');
      },
    );
  }
}