import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/content_detail_view.dart';

class Conectemos3 extends StatelessWidget {
  const Conectemos3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContentDetailView(
      imageUrl: 'https://www.uautonoma.cl/content/uploads/2025/04/Estudiantes-en-biblioteca.jpg',
      dateText: '11 Abril 2025',
      mainText: '¿Vas a dar la PAES este año?	Si quieres entrar a la Universidad este 2026, en la #Autónoma tenemos todo lo que necesitas para prepararte y obtener un buen puntaje.	Preuniversitario gratis, orientación, tips y mucho más para que llegues con todo al proceso de admisión.	Conoce más en admision.uautonoma.cl	#Admisión2026 #MásUniversidad',
      socialLogoUrl: 'https://img.icons8.com/?size=100&id=62852&format=png&color=000000',
      socialUsername: '@uautonomadechile',
      onSocialTap: () {
        print('Redireccionar a Instagram');
      },
    );
  }
}
