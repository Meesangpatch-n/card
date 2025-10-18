import 'package:flutter/material.dart';
import 'ProfileCard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      home: Scaffold(
        backgroundColor: const Color(0xFFEAF2FF),
        body: Center(
          child: ProfileCard(
            name: 'Niti Meesangpatch',
            major: 'Computer Sciene',
            email: 'nitimeesangpatch@gmail.com',
            phoneNumber: '092-265-4060',
            imageUrl: 'assets/Profile.jpg',
          ),
        ),
      ),
    );
  }
}
