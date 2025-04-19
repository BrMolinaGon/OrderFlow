import 'package:flutter/material.dart';

class TituloContenido extends StatelessWidget {
  final String titulo; // Texto del Row
  final String subrayado; // Texto del botón
  final double fontSize; // Tamaño de fuente del Row
  final VoidCallback? onPressed;

  const TituloContenido({
    Key? key,
    required this.titulo,
    required this.subrayado,
    this.fontSize = 25.0, // Valor predeterminado para el tamaño de fuente
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 8),
            //Diseño del texto titulo
            Text(
              titulo,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 8, top: 8),
          child: GestureDetector(
            onTap: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Diseño del texto subrayado
                Text(
                  subrayado,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
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
        ),
      ],
    );
  }
}