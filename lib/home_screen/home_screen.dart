import 'package:bake_project/provider/nav_bar_provider.dart';
import 'package:bake_project/screens_nav_tabs/cart_tab_screen.dart';
import 'package:bake_project/screens_nav_tabs/category_tab_screen.dart';
import 'package:bake_project/screens_nav_tabs/profile_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../screens_nav_tabs/home_screen/home_screen_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return WillPopScope(
      onWillPop: () async {
        // Reset the selected index to 0 when navigating back to HomeScreen
        navigationProvider.changeIndex(0);
        return true;
      },
      child: Scaffold(
        body: _buildCurrentScreen(navigationProvider.currentIndex),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.blueGrey.shade900,
              gap: 8,
              activeColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[400]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.category,
                  text: "Categories",
                ),
                GButton(
                  icon: Icons.card_travel,
                  text: "Cart",
                ),
                GButton(
                  icon: Icons.supervised_user_circle,
                  text: "Profile",
                ),
              ],
              selectedIndex: navigationProvider.currentIndex,
              onTabChange: (index) {
                navigationProvider.changeIndex(index);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentScreen(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomeTabScreen();
      case 1:
        return const CategoryTabScreen();
      case 2:
        return const CartTabScreen();
      case 3:
        return const ProfileTabScreen();
      default:
        return const HomeTabScreen();
    }
  }
}
