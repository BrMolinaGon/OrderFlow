import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_noticias.dart';

class Noticia1 extends StatelessWidget {
  const Noticia1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UaversCard(
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2025/04/nota-09-4.jpg',
      title: 'U. Autónoma inaugura su año académico 2025 con Clase Magistral del embajador de Argentina en Chile',
      actionText: 'Conoce más 😊',
      onActionTap: () {
        print('Navegar a detalles del evento');
      },
    );
  }
}