import 'package:flutter/material.dart';



class Chooselocation extends StatefulWidget{
@override
State<Chooselocation> createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {

@override
  void initState() {

    super.initState();
    print('initState function ran');

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('choose location screen'),

    );
  }}
