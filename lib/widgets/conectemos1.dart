import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_detail_view.dart';

class Conectemos1 extends StatelessWidget {
  const Conectemos1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContentDetailView(
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2025/04/Comite-UAlumni.jpg',
      dateText: '11 Abril 2025',
      mainText: 'Nuestra Universidad recibió al Comité Alumni CUP 2025 👏🏼, instancia que reunió a representantes de 16 instituciones de educación superior con el objetivo de compartir buenas prácticas, desafíos y proyecciones en el trabajo con egresados y titulados. Como integrantes de la comitiva institucional, participaron Ignacio Osorio Cabreras, director corporativo de Vida Universitaria, y María José Castro Rojas, directora de UAlumni. Este comité busca impulsar iniciativas estratégicas como ferias laborales, encuentros de networking y programas de empleabilidad 💼, fortaleciendo así el vínculo entre el ámbito académico y el mundo profesional 🤝🏼.',
      socialLogoUrl: 'https://img.icons8.com/?size=100&id=98960&format=png&color=000000',
      socialUsername: 'Universidad Autónoma de Chile',
      onSocialTap: () {
        print('Redireccionar a Instagram');
      },
    );
  }
}
