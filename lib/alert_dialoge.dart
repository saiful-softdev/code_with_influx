import 'package:flutter/material.dart';
class AlertDialoge extends StatefulWidget {
  const AlertDialoge({super.key});

  @override
  State<AlertDialoge> createState() => _AlertDialogeState();
}

class _AlertDialogeState extends State<AlertDialoge> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        Text("BMI Result is....")
      ],),
    );
  }
}
