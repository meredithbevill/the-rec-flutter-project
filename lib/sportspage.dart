// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'buddiespage.dart';
import 'informationpage.dart';
import 'profilepage.dart';
import 'classespage.dart';
import 'welcomepage.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 60.0, 25.0, 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('images/PaigeProfilePic.png'),
                    ),
                  ),
                  const Text(
                    "Paige's Sports",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InformationPage(),
                        ),
                      );
                    },
                    icon: Image.asset('images/InfoButtonGOLD.png'),
                    iconSize: 50,
                  ),
                ],
              ),
            ),
          
        const SizedBox(height: 20),
          // Classes page content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _buildSportsItem(
                  image: 'images/esports.png',
                  title: 'Esports',
                  date: 'Oct 19',
                  location: 'E Sports Room',
                ),
                const SizedBox(height: 20),
                _buildSportsItem(
                  image: 'images/soccer.png',
                  title: 'Soccer',
                  date: 'Nov 22',
                  location: 'UREC Fields',
                ),
                const SizedBox(height: 20),
                _buildSportsItem(
                  image: 'images/baseball.png',
                  title: 'Baseball',
                  date: 'Mar 20',
                  location: 'UREC Fields',
                ),
              ],
            ),
          ),
        ],
      ),
    ),
      //Bottom App Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
                );
              },
              icon: Image.asset('images/HomeIcon.png'),
              iconSize: 80,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BuddiesPage()),
                );
              },
              icon: Image.asset('images/BuddiesIcon.png'),
              iconSize: 80,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ClassesPage()),
                );
              },
              icon: Image.asset('images/ClassesIcon.png'),
              iconSize: 80,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InformationPage()),
                );
              },
              icon: Image.asset('images/InfoButton.png'),
              iconSize: 80,
            ),
          ],
        ),
      ),
    );
  }
Widget _buildSportsItem({
  required String image,
  required String title,
  required String date,
  required String location,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Date: $date',
                      style: const TextStyle(fontSize: 17),
                    ),
                    Text(
                      'Location: $location',
                      style: const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
}