
import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int leftDice = 1;
int rightDice = 1;

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
                setState(() {
                  // leftDice=3;
                  leftDice=Random().nextInt(6)+1; //1 sum for 1-to-6 value
                  rightDice=Random().nextInt(6)+1;
                });
                // print("Inkwell Tapped");
              },
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/$leftDice.png"),
                        ),
            ),),
          Expanded(
            child: InkWell(
              onTap: (){
                setState(() {
                  rightDice=Random().nextInt(6)+1;
                  leftDice=Random().nextInt(6)+1;
                });
              },
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/$rightDice.png"),
                        ),
            ),),
        ],),
      ),
    );
  }
}
