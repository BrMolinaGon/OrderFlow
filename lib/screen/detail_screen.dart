import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
    
    final item = args['item'] ?? 'Elemento no especificado';
    final subtitle = args['subtitle'] ?? 'Descripción no disponible';
    final url = args['url'] ?? 'https://via.placeholder.com/300x200';

    return Scaffold(
      appBar: AppBar(
        title: Text(item.toString()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              url,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                subtitle,
                style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Más detalles sobre $item...',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
