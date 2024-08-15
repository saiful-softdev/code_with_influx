import 'package:flutter/material.dart';
class Assigment_8 extends StatefulWidget {
  const Assigment_8({super.key});

  @override
  State<Assigment_8> createState() => _Assigment_8State();
}

class _Assigment_8State extends State<Assigment_8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Assigment-8"),),
      drawer: const Drawer(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(children: [
            ListTile(
              title: Text("Title",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              subtitle: Text("Subtitle"),

            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Inbox"),
            ),
            ListTile(
              leading: Icon(Icons.outbox),
              title: Text("Outbox"),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            ListTile(
              leading: Icon(Icons.data_thresholding),
              title: Text("Spam"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Inbox"),
            ),
            Divider(thickness: 6,),
            ListTile(
              leading: Icon(Icons.save),
              title: Text("Family"),
            ),
            ListTile(
              leading: Icon(Icons.save),
              title: Text("Friends"),
            ),
            ListTile(
              leading: Icon(Icons.save),
              title: Text("Work"),
            ),
            Divider(thickness: 6,),
            ListTile(leading: Icon(Icons.settings),
            title: Text("Settings & Account"),)
          ],),
        ),
      ),
    );
  }
}
