import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_eventos.dart';

class Evento2 extends StatelessWidget {
  const Evento2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EventCard(
      day: '22',
      month: 'ABR',
      title: 'Jornada Regional de Información y Estadisticas IND',
      items: [
        EventItem(text: '10:00 - 13:00', icon: Icons.access_time),
        EventItem(text: 'Sede Temuco', icon: Icons.location_on),
      ],
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2024/05/FOTO-seminario-mercado-de-la-india-1.jpg',
    );
  }
}