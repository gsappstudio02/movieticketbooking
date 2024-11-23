import 'package:bookmyshowclone/models/constants.dart';
import 'package:bookmyshowclone/screens/homepage.dart';
import 'package:bookmyshowclone/screens/siginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookmyshow clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      home: HomePageScreen(),
    );
  }
}

