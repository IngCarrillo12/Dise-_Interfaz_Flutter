import 'package:flutter/material.dart';

class Headerdashboard extends StatelessWidget {
  final String name;
  final String subtitle;
  final String image;
  const Headerdashboard({
    super.key,
    required this.name,
    required this.subtitle,
    required this.image
    });

  @override
  Widget build(BuildContext context) {
    return   Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi $name',
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      image), 
                ),
              ],
            );
  }
}