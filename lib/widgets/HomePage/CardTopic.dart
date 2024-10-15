import 'package:flutter/material.dart';

class Cardtopic extends StatelessWidget {
  final String title;
  final int content;
  final Color color;

  const Cardtopic( {
    super.key,
    required this.title,
    required this.content,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 130.0,  
        height: 120.0,  
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Courier',
                color: Colors.white
              ),
            ),
             const SizedBox(height: 15),
            Text(
              '$content post',
              style: const TextStyle(
                fontSize: 16.0,
               fontFamily: 'Courier',
                 color: Colors.white
              ),
              ),
          ],
        ),
      ),
    );
  }
}
