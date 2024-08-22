import 'package:flutter/material.dart';
class Assigment4 extends StatefulWidget {
  const Assigment4({super.key});

  @override
  State<Assigment4> createState() => _Assigment4State();
}

class _Assigment4State extends State<Assigment4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(

            child: Column(
              children: [
                const SizedBox(height: 30,),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 80,width: 100,color: Colors.blue,),
                    const Divider(thickness: 5,),
                    Container(height: 80,width: 100,color: Colors.green,),
                    const Divider(thickness: 5,),
                    Container(height: 80,width: 100,color: Colors.blue,)
                  ],
                ),
                const Divider(thickness: 5,),
                Row(
                  children: [
                    Container(height: 50,width: 50,color: Colors.blue,),
                    const Divider(thickness: 15,height: 50,),
                    Container(height: 50,width: 50,color: Colors.green,),
                    const Divider(thickness: 15,height: 50,),
                    Container(height: 50,width: 50,color: Colors.green,)
                  ],
                ),
                const Divider(thickness: 5,),
                Container(
                  height: 120,
                  width:300,
                  child: Row(
                    children: [
                      Container(height: 100,width: 100,
                        child: Column(
                        children: [
                          Container(height: 50,
                          width: 100,
                          color: Colors.amber,),
                          Container(height: 50,
                          width: 100,
                          color: Colors.purple,)
                        ],
                      ),),
                      Divider(thickness: 5),
                      Container(height: 100,width: 200,color: Colors.greenAccent,)

                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
