import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllTodoList extends StatefulWidget {
  const AllTodoList({super.key});

  @override
  State<AllTodoList> createState() => _AllTodoListState();
}

class _AllTodoListState extends State<AllTodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TODO APP"),
        actions: const [Icon(Icons.calendar_month)],

      ),
      body:   Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            todoTitle(),
            const SizedBox(height: 20,),
            todoTitle(),
            const SizedBox(height: 20,),
            todoTitle(),
          ],
        ),
      )


    );
  }

  Card todoTitle() {
    return const Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Column(
                    children: [
                      Text("Todo Title"),
                      Text("Todo Subtitle")
                    ],
                  )],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                  Icon(Icons.edit),
                  SizedBox(width: 10,),
                  Icon(Icons.delete),
                    SizedBox(width: 10,),
                  Icon(Icons.done),
                    SizedBox(width: 10,),

                ],)

              ],
            ),
          ),
        );
  }
}
