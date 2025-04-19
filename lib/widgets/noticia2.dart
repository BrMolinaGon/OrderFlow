import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_noticias.dart';

class Noticia2 extends StatelessWidget {
  const Noticia2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UaversCard(
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2025/04/6-7.jpg',
      title: 'Universidad Autónoma recibe reconocimiento en ceremonia del 61° Aniversario de la Comisión Chilena de Energía Nuclear',
      actionText: 'Conoce más 😊',
      onActionTap: () {
        print('Navegar a detalles del evento');
      },
    );
  }
}