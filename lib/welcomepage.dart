// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'backworkoutspage.dart';
import 'buddiespage.dart';
import 'classespage.dart';
import 'informationpage.dart';
import 'profilepage.dart';
import 'sportspage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

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
                      'Lets check your activity',
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
                padding: const EdgeInsets.fromLTRB(70.0, 60.0, 0.0, 0.0),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              children: [
                // Long box taking up 1/4 of the page vertically and the entire height horizontally
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.37,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: kElevationToShadow[7],
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(40.0, 0.0, 20.0, 0.0),
                          child: Row(
                            children: [
                              Text(
                                "Finished",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '12',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.fromLTRB(4.0, 10.0, 2.0, 4.0),
                          child: Text(
                            "Completed Workouts",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ]),
                ),
                // Space between the long box and the smaller rectangles
                const SizedBox(width: 20),
                // Two smaller rectangles sitting beside each other and stacked vertically
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: kElevationToShadow[7],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Column(
                        
                        children: [
                        SizedBox(height: 10),
                          Text(
                            "In Progress",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ),
                              ),
                              Text(
                                'Workouts',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                           SizedBox(height: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: kElevationToShadow[7],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Column(
                        children: [
                           SizedBox(height: 10),
                          Text(
                            "Time Spent",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                           SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            
                              Text(
                                '62',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ),
                              ),
                              Text(
                                'Minutes',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20), // Adjust the height as needed

          const Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 10.0),
              child: Text(
                'Start New Workout',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),


          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: Row(
                children: [
                  
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BackWorkoutsPage()),
                      );
                    },
                    icon: Image.asset('images/back.png'),
                    iconSize: 200,
                    
                  ),
              
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BackWorkoutsPage()),
                    );
                  },
                  icon: Image.asset('images/chest.png'),
                  iconSize: 200,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BackWorkoutsPage()),
                    );
                  },
                  icon: Image.asset('images/arms.png'),
                  iconSize: 200,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BackWorkoutsPage()),
                    );
                  },
                  icon: Image.asset('images/legs.png'),
                  iconSize: 200,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BackWorkoutsPage()),
                    );
                  },
                  icon: Image.asset('images/cardio.png'),
                  iconSize: 200,
                ),
              ],
            ),
          ),
            
            Padding(padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),  
             child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Keep The Progress!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'You are more successful than 88% of users',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                
              ),
      
            ),
            const SizedBox(height: 6),
          ],
          
        ),
      

      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarButton(
                context, 'Info', 'images/InfoButton.png', const InformationPage()),
            buildNavBarButton(context, 'Buddies', 'images/BuddiesIcon.png',
                const BuddiesPage()),
            buildNavBarButton(context, 'Classes', 'images/ClassesIcon.png',
                const ClassesPage()),
            buildNavBarButton(
                context, 'Sports', 'images/SportsIcon.png', const SportsPage()),
          ],
        ),
      ),
    );
  }

  Widget buildWorkoutButton(
      String label, String imagePath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
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

  Widget buildNavBarButton(BuildContext context, String label, String imagePath,
      StatelessWidget page) {
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