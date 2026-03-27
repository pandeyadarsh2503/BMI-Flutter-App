import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}
class _SplashState extends State<Splash>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>IntroPage()
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("     BMI   \nCalculator", style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: Colors.white))),
      ),
    );
  }
}