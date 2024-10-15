import 'package:flutter/material.dart';

class Titlesection extends StatelessWidget {
  final String title;

  const Titlesection({
    super.key,
    required this.title
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22, 
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Añadido color para que sea visible sobre fondo gris
                      ),
                    ),
                  );
  }
}