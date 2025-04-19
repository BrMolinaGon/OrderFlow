import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const CustomCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 206, 206, 206),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              child: IconButton(
                icon: Icon(Icons.more_horiz, color: Colors.grey[600]),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}