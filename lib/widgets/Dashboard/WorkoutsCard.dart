import 'package:flutter/material.dart';

class Workoutscard extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle_1;
  final String subtitle_2;
  final String image;

  const Workoutscard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle_1,
    required this.subtitle_2,
    required this.image
    });

  @override
  Widget build(BuildContext context) {
    return Container(
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(12),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle_1,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle_2,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
       Image.network(
            image,
            height: 96,
            width: 96,
            fit: BoxFit.cover,
          ),
    ],
  ),
);

  }
  }
