import 'package:flutter/material.dart';

class Statcard extends StatelessWidget {
  final String title;
  final int count;
  final String subtitle;
  final Color color; 

  const Statcard({
    super.key,
    required this.title,
    required this.count,
    required this.subtitle,
    required this.color
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Text(
            '$count',
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
           const SizedBox(width: 8), // Añade espacio entre los textos
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          ],
          )
          
        ],
      ),
    );
  }
}