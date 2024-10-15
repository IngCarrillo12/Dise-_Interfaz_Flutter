import 'package:diseno_interfaces/Pages/DashBoard.dart';
import 'package:diseno_interfaces/widgets/HomePage/CardTopic.dart';
import 'package:diseno_interfaces/widgets/HomePage/Header.dart';
import 'package:diseno_interfaces/widgets/HomePage/Post.dart';
import 'package:diseno_interfaces/widgets/HomePage/TitleSection.dart';
import 'package:flutter/material.dart';
List<Map<String, Object>> topics = [
      {'title': 'Java', 'content': 20, 'color': Colors.yellow},
      {'title': 'Javascript', 'content': 10, 'color': Colors.blue},
      {'title': 'Python', 'content': 5, 'color': Colors.green},
      {'title': 'Java', 'content': 20, 'color': Colors.red},
      {'title': 'Javascript', 'content': 10, 'color': Colors.purple},
      {'title': 'Python', 'content': 5, 'color': Colors.lightBlueAccent},
    ];
 List<Map<String, dynamic>> posts = [
      {
        'image': 'https://img.icons8.com/stickers/50/user.png',
        'name': 'Juan Carrillo',
        'hour': 2,
        'content':
            'Java es un lenguaje de programación y una plataforma informática que fue comercializada por primera vez en 1995 por Sun Microsystems',
        'likes': 200,
        'vistas': 100,
      },
      {
        'image': 'https://img.icons8.com/stickers/50/user.png',
        'name': 'Juan Carrillo',
        'hour': 2,
        'content':
            'Java es un lenguaje de programación y una plataforma informática que fue comercializada por primera vez en 1995 por Sun Microsystems',
        'likes': 200,
        'vistas': 100,
      },
    ];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 122, 221),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Envuelve el Header con GestureDetector o InkWell
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardPage()),
                );
              },
              child: const Header(
                image: 'https://img.icons8.com/stickers/50/user.png',
                name: 'Juan',
              ),
            ),
            // Contenedor que abarca Tópicos Populares y Tendencias
            Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tópicos Populares
                  const Titlesection(title: 'Tópicos Populares'),
                  const SizedBox(height: 10.0),
                   Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                height: 150, // Ajusta la altura para que funcione el ListView horizontal
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: topics
                      .map(
                        (topic) => Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Cardtopic(
                            title: topic['title'] as String,
                            content: topic['content'] as int,
                            color: topic['color'] as Color,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
                  const SizedBox(height: 10.0),
                  // Sección de Tendencias
                  const Titlesection(title: 'Tendencias'),
                  const SizedBox(height: 10),
                  // Tarjetas de tendencias
                   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: posts
                    .map(
                      (post) => Post(
                        image: post['image'] as String,
                        name: post['name'] as String,
                        hour: post['hour'] as int,
                        content: post['content'] as String,
                        likes: post['likes'] as int,
                        vistas: post['vistas'] as int,
                      ),
                    )
                    .toList(),
              ),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
