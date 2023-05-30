import 'package:flutter/material.dart';
import 'package:flutter_application_1/updatepass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 85, 62, 124)),
        useMaterial3: true,
      ),
      home: updatepass(),
    );
  }
}
