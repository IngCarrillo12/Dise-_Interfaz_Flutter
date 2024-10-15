import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String image;
  final String name;
  final int hour;
  final String content;
  final int likes;
  final int vistas;
  
  const Post({
    super.key,
    required this.image,
    required this.name,
    required this.hour,
    required this. content,
    required this.likes,
    required this.vistas, 
    });

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Perfil, nombre y tiempo
            Row(
              children: [
                 CircleAvatar(
                  backgroundImage: NetworkImage(
                    image, 
                  ),
                  radius: 25,
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                    Text(
                      'hace $hour horas',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),

            // Contenido del mensaje
            Text(
              content,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black
                ),
            ),
            const SizedBox(height: 10.0),

            // Likes y vistas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:[
                    const Icon(
                      Icons.thumb_up, 
                      size: 16.0, 
                      color: Colors.grey
                      ),
                    const SizedBox(width: 5.0),
                    Text(
                      '$likes Likes', 
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black
                        )),
                  ],
                ),
                Row(
                  children:  [
                    const Icon(
                      Icons.visibility, 
                      size: 16.0, 
                      color: Colors.grey),
                    const SizedBox(width: 5.0),
                    Text(
                      '$vistas vistas', 
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}