import 'package:bake_project/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../pallet.dart';

class Loginbtn extends StatelessWidget {
  const Loginbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.pink),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
          },
          // ignore: prefer_const_constructors
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: const Text(
              "LogIn",
              style: Kbodya,
            ),
          )),
    );
  }
}
