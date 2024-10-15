import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String image;
  final String name;
  final Color color;
  const Header({
    super.key,
    required this.image,
    required this.name,
    this.color = Colors.transparent
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity, 
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: color,
              ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(image), 
                          radius: 30,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Hola $name', 
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'La app del programador', 
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
      ],
    ),
    );
  }
}
