import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_detail_view.dart';

class Evento2 extends StatelessWidget {
  const Evento2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContentDetailView(
      imageUrl: 'https://images.unsplash.com/photo-1523580494863-6f3031224c94?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
      dateText: '15 abril 2025',
      mainText: 'Conferencia sobre innovación tecnológica con invitados internacionales. Inscripciones abiertas para todos los estudiantes.',
      socialUsername: '@uautonomatecnologia',
      onSocialTap: () {
        print('Redireccionar a Instagram');
      },
    );
  }
}