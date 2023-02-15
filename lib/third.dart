
import 'package:flutter/material.dart';

import 'menu.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

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
                                return const Menu();
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
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
                        Expanded(
                          child: Column(children: [
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  '06:30 - 15:00',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Internationals Air Lines',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 90),
                                child: Text(
                                  '7h 30m',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 78),
                                child: Text(
                                  'Econmay',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                          ]),
                        ),
                        Text(
                          "320",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(children: [
                            Container(
                                margin: EdgeInsets.only(left: 2),
                                child: Text(
                                  '19:30 - 22:40',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Text(
                                  'Swiss Air Lines',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 85),
                                child: Text(
                                  '12h 10m',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 78),
                                child: Text(
                                  'Econmay',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                          ]),
                        ),
                        Text(
                          "320",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(children: [
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  '06:30 - 15:00',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 73),
                                child: Text(
                                  'Air France',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 90),
                                child: Text(
                                  '7h 30m',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 78),
                                child: Text(
                                  'Econmay',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                          ]),
                        ),
                        Text(
                          "320",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(bottom: 30),
                    padding: EdgeInsets.all(
                        20
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(children: [
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  '06:30 - 15:00',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 73),
                                child: Text(
                                  'Air France',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 90),
                                child: Text(
                                  '7h 30m',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 78),
                                child: Text(
                                  'Econmay',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )),
                          ]),
                        ),
                        Text(
                          "320",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
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