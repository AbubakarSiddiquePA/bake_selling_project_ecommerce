import 'package:bake_project/pallet.dart';
import 'package:bake_project/screens_nav_tabs/home_screen/carousel_slider.dart';
import 'package:bake_project/screens_nav_tabs/home_screen/search_home.dart';
import 'package:flutter/material.dart';

class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home "),
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: const Column(
            children: [
              SearchInput(
                  icon: Icons.search, hint: "Search your Favourate Cake"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CarouselSliderExample(),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Experience Flavours",
                style: homeText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
