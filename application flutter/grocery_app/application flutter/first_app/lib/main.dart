import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [

              const SizedBox(height: 40),

              // Profile Picture
              const CircleAvatar(
                radius: 65,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 70,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

              // Name
              const Text(
                "Hala Mohamed",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              // Job
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              // Phone
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: const Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 30,
                    ),

                    SizedBox(width: 20),

                    Text(
                      "+20 1202872687",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),

              // Email
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: const Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.blue,
                      size: 30,
                    ),

                    SizedBox(width: 20),

                    Text(
                      "hala@email.com",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),

              // Location
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                child: const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 30,
                    ),

                    SizedBox(width: 20),

                    Text(
                      "Menofia, Egypt",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Social Icons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    size: 35,
                    color: Colors.blue,
                  ),

                  SizedBox(width: 25),

                  Icon(
                    Icons.youtube_searched_for,
                    size: 35,
                    color: Colors.pink,
                  ),

                  SizedBox(width: 25),

                  Icon(
                    Icons.tiktok,
                    size: 35,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}