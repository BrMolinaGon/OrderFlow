import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_detail_view.dart';

class Conectemos2 extends StatelessWidget {
  const Conectemos2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContentDetailView(
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2025/04/Inauguracion-Ano-Academico-2025.jpg',
      dateText: '09 Abril 2025',
      mainText: 'Inauguramos el Año Académico 2025 con la tradicional ceremonia junto a nuestras autoridades, invitados especiales, académicos y estudiantes 🎓👏🏼. Este importante hito marca oficialmente el inicio del nuevo año académico y da la bienvenida a toda la comunidad universitaria. En esta ocasión, contamos con la destacada participación del Sr. Jorge Marcelo Faurie, embajador de la República Argentina 🇦🇷 en Chile, quien dictó la clase magistral “Argentina en el nuevo escenario internacional”. Durante la jornada, nuestro Rector, Dr. iur. Teodoro Ribera, y el Vicerrector Académico, Dr. Hernán Viguera, abordaron los desafíos que enfrentará el país y la Universidad en este nuevo ciclo.',
    );
  }
}
