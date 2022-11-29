import 'package:flutter/material.dart';

class S11HomePage extends StatelessWidget {
  const S11HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Bienvenido'),
      ),
    );
  }
}
