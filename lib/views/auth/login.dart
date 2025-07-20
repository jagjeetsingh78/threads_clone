import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: 
      Center(
        child: SingleChildScrollView(
          child: Column(
          children: [
            TextField(
          decoration: InputDecoration(
           border: OutlineInputBorder(),
            labelText: 'username',

          ),
            )
          ],

          ),
        ),
      ))

    );
  }
}