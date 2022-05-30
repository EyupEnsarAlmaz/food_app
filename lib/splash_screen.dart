import 'package:flutter/material.dart';
import 'package:food_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1700), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const myScaffold()));
  }

  String imagePath = "assets/foodanimation.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 100),
        const Center(
            child: Text("Calories App",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
      ],
    ));
  }
}
