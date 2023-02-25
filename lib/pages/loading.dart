import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
class Loading extends StatefulWidget{
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

void   setupwordtime() async{
  WorldTime instance =WorldTime(location :'Beirut',flag:'leb.png',url:'Asia/Beirut');
  await instance.getTimeData();
Navigator.pushReplacementNamed(context, '/home',arguments: {
  'location':instance.location,'flag':instance.flag,'time':instance.time,
});

}
  @override
  void initState() {

    super.initState();
setupwordtime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child:Text('loading'),
      ),


    );
  }
}