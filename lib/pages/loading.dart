import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget{
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTimeData() async{

Response response =await get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Beirut'));
Map data=jsonDecode(response.body);
//print (data);
  String datatime =data['datetime'];
  String offest=data['utc_offset'].substring(1,3);
  //print(datatime) ;
    print(offest);
    DateTime now=DateTime.parse(datatime);
   now= now.add(Duration(hours: int.parse(offest)));
    print(now);


  }
  @override
  void initState() {

    super.initState();
    getTimeData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),


    );
  }
}