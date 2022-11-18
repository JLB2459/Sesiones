import 'package:flutter/material.dart';
import 'package:practice_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
