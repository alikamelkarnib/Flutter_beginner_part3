import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
class Loading extends StatefulWidget{
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time='loading';
void   setupwordtime() async{
  WorldTime instance =WorldTime(location :'Beirut',flag:'leb.png',url:'Asia/Beirut');
  await instance.getTimeData();
  print(instance.time);
  setState(() {
    time=instance.time;
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
        child:Text(time),
      ),


    );
  }
}