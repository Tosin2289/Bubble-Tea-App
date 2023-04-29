import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({Key? key, required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        activeColor: Colors.white,
        color: Colors.grey[300],
        mainAxisAlignment: MainAxisAlignment.center,
        tabActiveBorder: Border.all(color: Colors.white),
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(icon: Icons.shopping_bag, text: 'Cart')
        ],
      ),
    );
  }
}
