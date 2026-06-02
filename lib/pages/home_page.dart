import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  //const MyWidget({super.key});
  final age = 22;
  final name = "Rohit";
  //double pi = 3.14;
  //bool ismal = true;
  //num tem = 30.5;

  //var day = "tuesday";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Center(
          child: Text(
            'MY Name is $name and My age is $age and',
            //style: TextStyle(fontSize: 30),
          ),
        ),
        drawer: Drawer(),
      );
  }
}