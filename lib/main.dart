import 'package:bubble_tea_app/model/shop.dart';
import 'package:bubble_tea_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => BubbleTeaShop()),
      builder: ((context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.brown),
            home: const Splash(),
          )),
    );
  }
}
