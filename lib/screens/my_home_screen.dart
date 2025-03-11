
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green.shade500,
      appBar: AppBar(
        title: const Text("Dice App"),
      ),
      body: Center(
        child: Row(children: [
          Expanded(
            child: InkWell(
              onTap: (){
                print("INkwell Tapped");
              },
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/2.png"),
                        ),
            ),),
          Expanded(
            child: GestureDetector(
              onTap: (){
                print("GestureDetector Tapped");
              },
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/3.png"),
                        ),
            ),),
        ],),
      ),
    );
  }
}
