
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  late Animation _animation;
  late AnimationController _animationController;



  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(duration: Duration(seconds: 2),vsync: this)..addListener(() {
      setState(() {
      });
    },);
    _animation=Tween<double>(begin: 0.0,end: 200.0).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: _animation.value,
            width: _animation.value,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

