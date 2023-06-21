import 'package:flutter/material.dart';

class CartTabScreen extends StatelessWidget {
  const CartTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Tab"),
      ),
      body: const Center(
        child: Text("Cart Tabs screen"),
      ),
    );
  }
}
