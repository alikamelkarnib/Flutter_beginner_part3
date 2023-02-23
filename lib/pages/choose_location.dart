import 'package:flutter/material.dart';



class Chooselocation extends StatefulWidget{
@override
State<Chooselocation> createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {
  int counter =0;
@override
  void initState() {

    super.initState();
    print('build function ran');

  }
  @override
  Widget build(BuildContext context) {
    print('initState function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
     onPressed:(){setState(() {
       counter++;
     });} ,child: Text('click me is $counter'),
      ),

    );
  }}
