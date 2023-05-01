import 'package:bubble_tea_app/pages/homepage.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img6.png',
              height: 250,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Bubble Tea Shop",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Get your sweet, tasty bubble tea",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              minWidth: 300,
              height: 60,
              color: Colors.brown,
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return HomePage();
                })));
              }),
              child: Text(
                "Enter Shop",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
