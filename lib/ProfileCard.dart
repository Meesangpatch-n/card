import 'package:flutter/material.dart';
import 'simple_custom_widget.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String major;
  final String email;
  final String phoneNumber;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.major,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage(imageUrl), 
          ),

          const SizedBox(height: 12),

          CustomCard(text: "Name: $name", icon: Icons.person),
          const SizedBox(height: 8),

          CustomCard(text: "Major: $major", icon: Icons.work),
          const SizedBox(height: 8),

          CustomCard(text: "Email: $email", icon: Icons.email),
          const SizedBox(height: 8),

          CustomCard(text: "Phone: $phoneNumber", icon: Icons.phone),
        ],
      ),
    );
  }
}
