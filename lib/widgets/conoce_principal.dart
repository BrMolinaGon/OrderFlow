import 'package:flutter/material.dart';

class ConoceCard extends StatelessWidget {
  const ConoceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://www.uautonoma.cl/content/uploads/2023/07/universidad-autonoma-fachada-pasillos-campus-temuco-1-768x512.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 190, 190, 190),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: EdgeInsets.all(8), // Opcional: Espaciado interno
                  child: Text(
                    'Las personas al centro',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Equidad, inclusión y respeto',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold, // Negrita
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Leer más aquí →',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold, // Negrita
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
