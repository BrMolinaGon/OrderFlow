import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_eventos.dart';

class Evento1 extends StatelessWidget {
  const Evento1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EventCard(
      day: '21',
      month: 'ABR',
      title: 'Jornada de Diálisis Dirección Zonal Sur',
      items: [
        EventItem(text: '09:00 - 14:00', icon: Icons.access_time),
        EventItem(text: 'Sede Temuco', icon: Icons.location_on),
      ],
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2023/10/jornada-regional-temuco.jpg',
    );
  }
}