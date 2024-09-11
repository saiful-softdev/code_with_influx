import 'package:flutter/material.dart';
import 'package:influx_code/all_todo_list.dart';

class LiveTest2 extends StatefulWidget {
  const LiveTest2({super.key});

  @override
  State<LiveTest2> createState() => _LiveTest2State();
}

class _LiveTest2State extends State<LiveTest2> {
  @override
  void initState() {

    super.initState();
    _moveToOtherScreen();
  }
  void _moveToOtherScreen()async{
await Future.delayed(const Duration(seconds: 2));
Navigator.push(context, MaterialPageRoute(builder: (context){
  return const AllTodoList();
}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset("images/Logo.jpg"),
            const Spacer(),
            const CircularProgressIndicator(),
            const Text("Version 1.0.0")
          ],
        ),
      ),
    );
  }
}
