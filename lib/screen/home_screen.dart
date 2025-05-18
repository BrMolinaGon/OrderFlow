/*import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Eventos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // Alinear hacia la izquierda
          children: [
            Image.network(
              'https://i.imgur.com/Vr7IWdq.png', // URL de la imagen
              height: 50, // Altura de la imagen
            ),
          ],
        ),
        centerTitle: false, // Deshabilitar centrado del título
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Acción al presionar el icono de notificaciones
              print('Buscar');
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // Acción al presionar el icono de notificaciones
              print('Abrir menu');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  // Imagen arriba de todo
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(),
                    child: Image.network(
                      'https://www.uautonoma.cl/content/uploads/2024/07/providencia-sede-scaled-1.jpg',
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Foco en resultaddos de aprendizaje',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Innovacion, calidad y liderazgo',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  //
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'En la Universidad Autónoma de Chile compartimos el principio de que los bienes públicos pueden ser generados, indistintamente, por instituciones estatales y privadas, y asumimos como un desafío propio evolucionar hacia una universidad más compleja que va más allá de la docencia, por lo que hemos impulsado con energía el desarrollo de la investigación y la vinculación con el medio.',
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                            left: 16,
                            top: 8,
                          ), // Eliminado el padding vertical inferior
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Descúbrelo aquí',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(width: 4),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                padding: EdgeInsets.all(4),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),

            // Conoce cards
            ConoceCard(),
            SizedBox(height: 40),

            CustomCard(
              imageUrl:
                  'https://www.uautonoma.cl/content/uploads/2024/03/NOTA-3-770x450.jpg',
              title: 'Más allá del aula',
              subtitle: 'Estamos en todo el ciclo de vida universitario',
            ),
            SizedBox(height: 24),

            CustomCard(
              imageUrl:
                  'https://www.uautonoma.cl/content/uploads/2024/03/MAC03078-800x450.jpg',
              title: 'Liderazgo que transforma',
              subtitle: 'El aporte de la mujer al que hacer universitario',
            ),
            SizedBox(height: 24),

            CustomCard(
              imageUrl:
                  'https://www.uautonoma.cl/content/uploads/2024/01/Sostenibilidad-y-RSU-800x450.jpg',
              title: 'Cultura institucional',
              subtitle: 'Comprometidos con la sostenibilidad',
            ),
            SizedBox(height: 24),

            TituloContenido(
              titulo: 'Conoce +',
              subrayado: 'Descubre más noticias',
              onPressed: () {
                print('Botón presionado: Descubre más noticias');
              },
            ),

            SizedBox(height: 24),

            // Componente de portada con nueva estructura
            Container(
              decoration: BoxDecoration(color: const Color(0xFF3D3935)),
              child: Column(
                children: [
                  // Imagen arriba de todo

                  // "En portada" debajo de la imagen
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'En portada',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.vertical(),
                    child: Image.network(
                      'https://www.uautonoma.cl/content/uploads/2025/03/maria-de-los-angeles.jpg',
                      height: 286,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Comillas debajo de "En portada"
                  SizedBox(height: 20), // Separación de 10 pixels
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '"',
                        style: TextStyle(
                          fontSize: 72,
                          color: const Color.fromARGB(255, 192, 21, 21),
                          height: 0.5,
                        ),
                      ),
                    ),
                  ),

                  // Texto de la cita
                  Padding(
                    padding: EdgeInsets.fromLTRB(32, 8, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'La modalidad online me ha permitido compatibilizar mis tiempos como madre y trabajadora.',
                          style: TextStyle(fontSize: 16, height: 1.4, color: Colors.white),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'María de los Ángeles Cárdenas',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Estudiante Magíster en Trabajo Social',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),
            // Cards de noticias
            TituloContenido(
              titulo: 'Noticias destacadas',
              subrayado: 'Descubre más noticias',
              onPressed: () {
                print('Botón presionado: Descubre más noticias');
              },
            ),
            SizedBox(height: 24),

            Noticia1(),
            Divider(
              height: 40,
              thickness: 1,
              color: const Color.fromARGB(255, 138, 17, 17),
            ),
            Noticia2(),
            Divider(
              height: 40,
              thickness: 1,
              color: const Color.fromARGB(255, 138, 17, 17),
            ),
            Noticia3(),
            Divider(
              height: 40,
              thickness: 1,
              color: const Color.fromARGB(255, 138, 17, 17),
            ),

            // Cards de eventos destacados
            TituloContenido(
              titulo: 'Próximos eventos',
              subrayado: 'Descubre más eventos',
              onPressed: () {
                print('Botón presionado: Descubre más eventos');
              },
            ),
            SizedBox(height: 24),

            Evento1(),
            Divider(height: 40, thickness: 1, color: Colors.grey[300]),
            Evento2(),
            Divider(height: 40, thickness: 1, color: Colors.grey[300]),
            Evento3(),
            Divider(height: 40, thickness: 1, color: Colors.grey[300]),

            // Cards de conectemos
            TituloContenido(
              titulo: 'Conectemos',
              subrayado: 'Explora nuestras redes sociales',
              onPressed: () {
                print('Botón presionado: Descubre más conectemos');
              },
            ),
            SizedBox(height: 24),

            Conectemos1(),
            Divider(height: 40, thickness: 1, color: Colors.grey[300]),
            Conectemos2(),
            Divider(height: 40, thickness: 1, color: Colors.grey[300]),
            Conectemos3(),
          ],
        ),
      ),
    );
  }
}*/
