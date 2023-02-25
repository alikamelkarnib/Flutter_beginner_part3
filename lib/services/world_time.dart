import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{


  String location;
  String time='';
  String flag;
  String url;
  bool isDaytime=true;
  WorldTime({required this.location,required this.flag,required this.url});


  Future<void> getTimeData() async{
    try{
  Response response =await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
  Map data=jsonDecode(response.body);
//print (data);
  String datatime =data['datetime'];
  String offest=data['utc_offset'].substring(1,3);
  //print(datatime) ;
  print(offest);
  DateTime now=DateTime.parse(datatime);
  now= now.add(Duration(hours: int.parse(offest)));
  isDaytime=now.hour>6&& now.hour<20 ? true :false;
  time=DateFormat.jm().format(now);




  }
 catch(e){
   print('catch error :$e');
   time='non data';

  }
  }
}
