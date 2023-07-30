import 'package:bubble_tea_app/pages/intropage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), (() {}));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
      return IntroPage();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img7.png',
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(colors: [
                Color.fromARGB(255, 167, 124, 108),
                Color.fromARGB(255, 109, 56, 35)
              ]).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
              child: const Text(
                "Bubble Tea Shop",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
