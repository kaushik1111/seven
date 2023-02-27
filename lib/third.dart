import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'menu.dart';

class Third extends StatelessWidget {
  Third({Key? key}) : super(key: key);
  List s=['EconmayClass','FistClass'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 130,
            centerTitle: false,
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return Menu();
                              },
                            ));
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_sharp,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      tooltip: 'Serch Icon',
                      onPressed: () {},
                    ), //IconButton
                    IconButton(
                      icon: const Icon(Icons.menu),
                      tooltip: 'menu Icon',
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: Text("Flights",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  alignment: Alignment.centerLeft,
                )
              ],
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: FutureBuilder<dynamic>(builder: (context, snapshot) {
              if (snapshot.hasData) {
                return
                  ListView.builder(itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(
                        bottom: 20,
                        top: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Container(

                                child: Text(
                                  '06:30 - 15:00',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                )),
                            Container(

                                child: Text(
                                  '${snapshot.data![index]['flightname']} Air Lines',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(

                                child: Text(
                                  snapshot.data![index]['time'].toString().substring(0,10),
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(

                                child: Text(
                                  s[index%2],
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                          ]),
                          Expanded(
                            child: Container(alignment: Alignment.centerRight,
                              child: Text(
                                snapshot.data![index]['price'].toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),Text('\$',style: TextStyle(fontSize: 18),)
                        ],

                      ),
                    );
                    // return Text(snapshot.data![index]['Country'].toString());
                  }, itemCount: snapshot.data!.length);


              }
              else{
                return Expanded(child: Container(alignment:Alignment.center,child: CircularProgressIndicator()));

              }
            },
                future: callApi()),
          ),


          bottomNavigationBar: BottomNavigationBar(
            iconSize: 20,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_outlined, color: Colors.blue),
                  label: "Shop travel"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_sharp, color: Colors.black),
                  label: "Trips"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle, color: Colors.black),
                  label: "Account"),
            ],
          )),
    );
  }
}

Future<dynamic> callApi() async {
  http.Response res = await http.get(
      Uri.parse('https://630ecbf3498924524a7fb8ff.mockapi.io/Faculties'));
  dynamic map = jsonDecode(res.body.toString());
  print(map);

  return map;
}