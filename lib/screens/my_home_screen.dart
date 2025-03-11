
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
      body: Row(children: [
        Expanded(flex: 2, child: Image.asset("assets/2.png"),),
        Expanded(child: Image.asset("assets/3.png"),),
      ],),
    );
  }
}
