import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(centerTitle: true, title: Text("Profile Screen")),
      body: const Center(child: Text("Profile Screen")),
    );
  }
}
