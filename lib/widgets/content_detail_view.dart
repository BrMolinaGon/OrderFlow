import 'package:flutter/material.dart';

class ContentDetailView extends StatelessWidget {
  final String appBarTitle;
  final Color? appBarColor;
  final String imageUrl;
  final String dateText;
  final String mainText;
  final String socialUsername;
  final String socialLogoUrl;
  final VoidCallback? onSocialTap;

  const ContentDetailView({
    super.key,
    this.appBarTitle = 'Detalle',
    this.appBarColor,
    required this.imageUrl,
    required this.dateText,
    required this.mainText,
    this.socialUsername = '@uautonomadechile',
    this.socialLogoUrl =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/768px-Instagram_logo_2016.svg.png',
    this.onSocialTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Encabezado opcional (simulando un mini-AppBar)
        if (appBarTitle != 'Detalle')
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              appBarTitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: appBarColor ?? Colors.blue[800],
              ),
            ),
          ),

        // Imagen
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                height: 200,
                color: Colors.grey[200],
                child: Center(
                  child: CircularProgressIndicator(
                    value:
                        loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                  ),
                ),
              );
            },
            errorBuilder:
                (context, error, stackTrace) => Container(
                  height: 200,
                  color: Colors.grey[200],
                  child: Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                ),
          ),
        ),
        SizedBox(height: 16),

        // Aca se pone lo del estilo de la fecha
        Text(
          dateText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 12),

        // Estilo del contenido
        Text(mainText, style: TextStyle(fontSize: 16, height: 1.4)),
        SizedBox(height: 20),

        // Logo de la izquiera
        InkWell(
          onTap: onSocialTap,
          child: Row(
            children: [
              Image.network(socialLogoUrl, height: 24, width: 24),
              SizedBox(width: 8),
              Text(
                socialUsername,
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(
                    255,
                    22,
                    89,
                    128,
                  ), //color del link
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}