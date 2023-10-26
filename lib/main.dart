import 'package:flutter/material.dart';
import 'package:responsive_design/responsive_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
     
      home: ExpandedFlexibleLayout(),
    );
  }
}
