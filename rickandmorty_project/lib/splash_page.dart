import 'package:flutter/material.dart';
import 'package:rickandmorty_project/character_detail_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _myHomePageState();
}

class _myHomePageState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => CaracterPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/images.png"),
          SizedBox(height: 20),
          Text(
            "Welcome!",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
