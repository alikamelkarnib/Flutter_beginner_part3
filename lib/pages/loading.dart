import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget{
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  set spinkit(SpinKitWave spinkit) {}

 


void   setupwordtime() async{
  WorldTime instance =WorldTime(location :'Beirut',flag:'leb.png',url:'Asia/Beirut');
  await instance.getTimeData();
Navigator.pushReplacementNamed(context, '/home',arguments: {
 'location':instance.location,'flag':instance.flag,'time':instance.time,'isDaytime':instance.isDaytime,
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
      backgroundColor: Colors.blue[900],
      body: Center(
        child:spinkit = SpinKitWave(
          color: Colors.white,
          size: 80.0,
        ),
      ),


    );
  }
}