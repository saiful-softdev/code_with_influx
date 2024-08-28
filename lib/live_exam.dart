import 'package:flutter/material.dart';

class LiveExam extends StatefulWidget {
  const LiveExam({super.key});

  @override
  State<LiveExam> createState() => _LiveExamState();
}

class _LiveExamState extends State<LiveExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title:  Text("BMI Calculator",style: buildTextStyle(),),),
      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            rowMaleFemale(),
            inputHeight(),
            rowAgeWeight(),
            calculateButton()
          ],
        ),
      ),
    );
  }

  SizedBox calculateButton() {
    return SizedBox(
      height: 50,
      width: double.infinity,
        child:ElevatedButton(onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const AlertDialog();
          }));

        },child: Text("Calculate",style: buildTextStyle(),textAlign: TextAlign.center,),)
            //
            );
  }

  Row rowAgeWeight() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(child: SizedBox(
                    height: 200,
                    width: 160,child: Column(

                    children: [
                       Text("Weight",style: buildTextStyle(),),
                       const SizedBox(height: 8,),
                       Text("60",style: buildTextStyle(),),
                      const SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        FloatingActionButton(onPressed: (){},child: const Icon(Icons.straighten),),
                        FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),),
                      ],)
                    ],
                  ),),
                  )),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(child: SizedBox(
                    height: 200,
                    width: 160,child: Column(

                    children: [
                      Text("Age",style: buildTextStyle(),),
                      const SizedBox(height: 8,),
                      Text("28",style: buildTextStyle(),),
                      const SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(onPressed: (){},child: const Icon(Icons.straighten),),
                          FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),),
                        ],)
                    ],
                  ),),
                  )),
            ],);
  }

  Card inputHeight() {
    return Card(elevation: .1,
            child:Container(
            height: 160,
            width: double.infinity,
              child:  Column(
                children: [
                  Text("Height",style: buildTextStyle(),),
                  const SizedBox(height: 10,),
                  Text("180",style: buildTextStyle(),),
                  const Divider(thickness: 5,color: Colors.red,)
                ],
              ),
          ),);
  }

  Row rowMaleFemale() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(child: SizedBox(
              height: 200,
              width: 160,child: Column(

              children: [
                Image.network("https://upload.wikimedia.org/wikipedia/commons/0/05/Female-icon-2.png?20200401195735",fit: BoxFit.fitHeight),
                Text("Male",style: buildTextStyle(),)
              ],
            ),),
          )),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: .4,
              child: SizedBox(
                height: 200,
                width: 160,
                child: Column(
                  children: [
                    Image.network("https://upload.wikimedia.org/wikipedia/commons/0/05/Female-icon-2.png?20200401195735",fit: BoxFit.contain,),
                    Text("Female",style: buildTextStyle(),)
                  ],
                ),
              ),
            ),
          )
        ],);
  }

  TextStyle buildTextStyle() => TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
}
