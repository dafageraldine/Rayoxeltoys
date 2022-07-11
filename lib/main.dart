import 'package:flutter/material.dart';
import 'package:rayoxeltoy/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RayoxeltoyNFT',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
