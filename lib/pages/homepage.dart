import 'package:bubble_tea_app/components/bottom_nav_bar.dart';
import 'package:bubble_tea_app/pages/cart.dart';
import 'package:bubble_tea_app/pages/shop.dart';
import 'package:flutter/material.dart';

import '../components/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigatebottombar(int Newindex) {
    setState(() {
      _selectedIndex = Newindex;
    });
  }

  final List<Widget> _pages = [const Shop(), const Cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.brown[200],
      bottomNavigationBar: BottomNavBar(
        onTabChange: ((index) => navigatebottombar(index)),
      ),
      body: _pages[_selectedIndex],
      drawer: const myDrawer(),
    );
  }
}
