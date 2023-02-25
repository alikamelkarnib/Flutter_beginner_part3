import 'package:flutter/material.dart';

import '../services/world_time.dart';



class Chooselocation extends StatefulWidget{
@override
State<Chooselocation> createState() => _ChooselocationState();
}

class _ChooselocationState extends State<Chooselocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
  WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
  WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
  WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
  WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
  WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
  WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
  WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),];


@override
  void initState() {

    super.initState();


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
    body: ListView.builder(itemCount: locations.length,
    itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 4),
        child: Card(

          child: ListTile(
            onTap: (){},
            title: Text(locations[index].location),
            leading: CircleAvatar(
              backgroundImage:AssetImage('assets/${locations[index].flag}') ,
            ),
          ),
        ),
      );
    }

    ),

    );
  }}
