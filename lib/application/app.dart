import 'package:flutter/material.dart';
import '../screen/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do App",
      home: HomeScreen(),
    );
  }
}
