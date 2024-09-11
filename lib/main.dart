import 'package:flutter/material.dart';
import 'package:influx_code/assigment4.dart';
import 'package:influx_code/assignment5.dart';
import 'package:influx_code/home_screen.dart';
import 'package:influx_code/live_exam.dart';
import 'package:influx_code/live_test2.dart';

import 'assigment_8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const LiveTest2(),
    );
  }
}
