// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:the_rec/dumbbellspage.dart';
import 'buddiespage.dart';
import 'classespage.dart';

import 'profilepage.dart';
import 'sportspage.dart';
import 'welcomepage.dart';

class BackWorkoutsPage extends StatelessWidget {
  const BackWorkoutsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 0.0),
                    child: Text(
                      'Hi, Paige',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Pick a Back Machine',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(90.0, 60.0, 0.0, 0.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/PaigeProfilePic.png'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          
          const SizedBox(height: 40),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                buildWorkoutButton(
                  'Cable Column',
                  'images/cableColumn.png',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DumbbellsPage()),
                  ),
                ),
                buildWorkoutButton(
                  'Dumbbells',
                  'images/dumbbells.png',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DumbbellsPage()),
                  ),
                ),
                buildWorkoutButton(
                  'Lat Pulldown',
                  'images/latPulldown.png',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DumbbellsPage()),
                  ),
                ),
                buildWorkoutButton(
                  'Pec Machine',
                  'images/pecMachine.png',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DumbbellsPage()),
                  ),
                ),
                buildWorkoutButton(
                  'Power Rack',
                  'images/powerRack.png',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DumbbellsPage()),
                  ),
                ),
               buildWorkoutButton(
                  'Row Machine',
                  'images/rowMachine.webp',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DumbbellsPage()),
                  ),
                ), 
                
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarButton(context, 'Home', 'images/HomeIcon.png', const WelcomePage()),
            buildNavBarButton(context, 'Buddies', 'images/BuddiesIcon.png', const BuddiesPage()),
            buildNavBarButton(context, 'Classes', 'images/ClassesIcon.png', const ClassesPage()),
            buildNavBarButton(context, 'Sports', 'images/SportsIcon.png', const SportsPage()),
          ],
        ),
      ),
    );
  }

  Widget buildWorkoutButton(String label, String imagePath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFB29441),
          borderRadius: BorderRadius.circular(10),
          
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 150,
              height: 150,
            ),
            
            Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarButton(BuildContext context, String label, String imagePath, StatelessWidget page) {
  return IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    icon: Image.asset(imagePath),
    iconSize: 80,
    tooltip: label,
  );
}

}