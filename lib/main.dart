import 'package:flutter/material.dart';
import 'package:frist_app/gradient_container.dart';

void main() {
  
  runApp(
    
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rolle Dice program'),
          
        ),
        body: GradientContainer(
          const Color.fromARGB(255, 173, 173, 222),
          const Color.fromARGB(255, 2, 2, 197),
        ),
      ),
    ),
  );
}
