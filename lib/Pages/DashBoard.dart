import 'package:diseno_interfaces/Pages/homePage.dart';
import 'package:diseno_interfaces/widgets/Dashboard/HeaderDashboard.dart';
import 'package:diseno_interfaces/widgets/Dashboard/StatCard.dart';
import 'package:diseno_interfaces/widgets/Dashboard/WorkoutsCard.dart';
import 'package:diseno_interfaces/widgets/HomePage/TitleSection.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Headerdashboard(
                name: 'Juan',
                subtitle: 'Let\'s check your activity',
                image: 'https://img.icons8.com/stickers/50/user.png',
              ),
            ),
            const SizedBox(height: 20),
            // Estadísticas en cuadrículas
            Container(
              height: 300.0,
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Finished',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          '12',
                          style: TextStyle(
                            fontSize: 46.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Completed',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                      ),
                                ),
                              ),
               
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Statcard(
                          title: 'Time Spent',
                          count: 62,
                          subtitle: 'Minutes',
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(height: 10),
                        Statcard(
                          title: 'In progress',
                          count: 2,
                          subtitle: 'Workouts',
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Título de nuevas rutinas
            const Titlesection(title: 'Discover new workouts'),
            const SizedBox(height: 10),

            // Solucionar el problema del ListView
            SizedBox(
              height: 150, // Ajusta la altura según tus necesidades
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Workoutscard(
                    color: Colors.blue,
                    title: 'Cardio',
                    subtitle_1: '10 Exercise',
                    subtitle_2: '50 Minutos',
                    image: 'https://img.icons8.com/emoji/256/woman-running.png',
                  ),
                  SizedBox(width: 10),
                  Workoutscard(
                    color: Colors.orange,
                    title: 'Arms',
                    subtitle_1: '6 Exercises',
                    subtitle_2: '35 Minutes',
                    image: 'https://img.icons8.com/emoji/256/woman-gesturing-ok.png',
                  ),
                  SizedBox(width: 10),
                  Workoutscard(
                    color: Colors.purple,
                    title: 'Arms',
                    subtitle_1: '6 Exercises',
                    subtitle_2: '35 Minutes',
                    image: 'https://img.icons8.com/emoji/256/woman-gesturing-ok.png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Texto final
            const Center(child: Titlesection(title: 'Keep the progress!')),
          ],
        ),
      ),
    );
  }
}
