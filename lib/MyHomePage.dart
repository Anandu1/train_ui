import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'LocationPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: const Icon(
              Icons.notifications_none,
              color: Colors.purpleAccent,
            ))
          ],
          leading: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                ),
                onPressed: () {},
              ),
            ],
          ),
          title: Row(
            children: [
              Icon(Icons.train),
              Text(
                'SERVICE MANAGER',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          backgroundColor: Colors.black),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 30),
        currentIndex: 2,

        showUnselectedLabels: false,
        showSelectedLabels: false,


        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded,),
              title: Text('Profile'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.train),
              title: Text('Train'),
             ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Message'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            title: Text('Downloads'),

          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
           
            color: Colors.white
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Radio(value: 1, groupValue: 1),
                      Text("Search Set Number")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: 1,
                        activeColor: Colors.red,
                      ),
                      Text("Search Set by Train Number")
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("SIGN ON"),
                        Text("13:21"),
                        Text(
                          "KYN",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height:50,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("SIGN OFF"),
                        Text("20:35"),
                        Text(
                          "KYN",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height:50,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("DUTY HRS"),
                        Text("7:14"),
                        Text(
                          "KYN",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height:50,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("KMS"),
                        Text("156"),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height:50,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("NDH"),
                        Text("3:12"),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height:50,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "232",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(25, 5, 0, 0),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.red,
                        ),
                        hintText: "SET NO 232",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.black)),
                  ),
                ),
              ),
              Column( children: <Widget>[
                DataTable(dividerThickness: 1,
                  columns: [
                    DataColumn(
                        label: Text('TRAIN NO',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,decorationColor: Colors.black,decorationThickness: 2))),

                    DataColumn(
                        label: Text('START',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,decorationColor: Colors.black,decorationThickness: 2))),
                    DataColumn(
                        label: Text('CHANGE',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,decorationColor: Colors.black,decorationThickness: 2))),
                    DataColumn(
                        label: Text('Details',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('S 90001')),

                      DataCell(Text('KYN'
                          ,style: TextStyle(color: Colors.red),)),
                      DataCell(Text('CSMT'
                         ,style: TextStyle(color: Colors.red), )),
                      DataCell(Text('')),
                    ]), DataRow(cells: [
                      DataCell(Text('')),

                      DataCell(Text('13:56'
                          ,style: TextStyle(color: Colors.black),)),
                      DataCell(Text('15:24'
                         ,style: TextStyle(color: Colors.black), )),
                      DataCell(Text('')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('F 90002')),
                      DataCell(Text('CSMT ',style: TextStyle(color: Colors.red),)),
                      DataCell(Text('AS0 ',style: TextStyle(color: Colors.red),)),
                      DataCell(Text('')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('')),

                      DataCell(Text('17:41'
                        ,style: TextStyle(color: Colors.black),)),
                      DataCell(Text('19:23'
                        ,style: TextStyle(color: Colors.black), )),
                      DataCell(Text('')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('S 90003')),
                      DataCell(Text('ASO',style: TextStyle(color: Colors.red),)),
                      DataCell(Text('KYN ',style: TextStyle(color: Colors.red),)),
                      DataCell(Text('')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('')),

                      DataCell(Text('19:43'
                        ,style: TextStyle(color: Colors.black),)),
                      DataCell(Text('20:20'
                        ,style: TextStyle(color: Colors.black), )),
                      DataCell(Text('')),
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton.icon(
                      label: Text('Add to Roaster',style: TextStyle(color: Colors.white),),
                      icon: Icon(Icons.add,color: Colors.white,),
                      color: Colors.lightGreen,
                      onPressed: () {},
                    ),
                    FlatButton.icon(
                      label: Text('SET REMINDER',style: TextStyle(color: Colors.white),),
                      icon: Icon(Icons.notifications,color: Colors.blue,),
                      color: Colors.red,
                      onPressed: () {
                        /** */
                      },
                    ),
                  ],
                ),

              ]),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_on),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return LocationPage();
          }));
        },
      ),
    );
  }

}
