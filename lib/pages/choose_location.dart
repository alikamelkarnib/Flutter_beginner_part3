import 'package:flutter/material.dart';



class Chooselocation extends StatefulWidget{
@override
State<Chooselocation> createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {
  int counter =0;
  void getData() async{
 String username=await Future.delayed(Duration(seconds: 5),(){
 return 'ali';
});
print('wite');
String bio=await Future.delayed(Duration(seconds: 3),(){
  return 'abbas';
});
print('$username-$bio');
}
@override
  void initState() {

    super.initState();
  getData();
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
      body: ElevatedButton(
     onPressed:(){setState(() {
       counter++;
     });} ,child: Text('click me is $counter'),
      ),

    );
  }}
