import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  String _locationMessage="";
  String YourLocation="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Text("My Location",style: TextStyle(color: Colors.redAccent),),
        leading: Icon(Icons.menu,color: Colors.redAccent,),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 100),
          child: Column(
            children: [
              RichText(text:TextSpan(text: YourLocation,style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text:_locationMessage,style: TextStyle(color: Colors.black,fontSize: 18)
                    )
                  ]
              )

              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.my_location),
        onPressed: (){
          _getCurrentLocation();
        },
      ),
    );
  }
  void _getCurrentLocation () async {
    final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
    setState(() {
      _locationMessage= " (${position.latitude} , ${position.longitude})";
      YourLocation="Your Location : ";
    });
  }
}

