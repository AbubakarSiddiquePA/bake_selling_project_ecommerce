import 'package:flutter/material.dart';

class ProfileTabScreen extends StatelessWidget {
  const ProfileTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfileTabScreen"),
      ),
      body: const Center(
        child: Text("ProfileTabScreen"),
      ),
    );
  }
}
