import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_eventos.dart';

class Evento3 extends StatelessWidget {
  const Evento3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EventCard(
      day: '22',
      month: 'ABR',
      title: 'Exposición de Arte Visual: “Visiones Estudiantiles, una Mirada Universitaria"',
      items: [
        EventItem(text: '12:30 - 15:00', icon: Icons.access_time),
        EventItem(text: 'Sede Temuco', icon: Icons.location_on),
      ],
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2025/03/FOTO-lanzamiento-exposicion-mujer-1.jpg',
    );
  }
}