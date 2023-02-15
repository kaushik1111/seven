import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //AppBar

          body: Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    AppBar(
                      toolbarHeight: 80,
                      automaticallyImplyLeading: false,
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
                                    onPressed: () {},
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
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.transparent,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.flight_takeoff_sharp,
                                  size: 40,
                                ),
                                Text("Traveler",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ]),
                        )),
                    Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0))),
                      child: Card(
                          elevation: 0.0,
                          color: Colors.white54,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return const Menu();
                                    },
                                  ));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: 25,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.holiday_village_outlined,
                                        size: 50,
                                      ),
                                      Text(
                                        "Hoteles",
                                        style: TextStyle(fontSize: 25),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 50),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return const Menu();
                                    },
                                  ));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 25),
                                  child: Row(
                                    children: [
                                      Icon(Icons.local_shipping, size: 50),
                                      Text(
                                        "Cruises",
                                        style: TextStyle(fontSize: 25),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Expanded(flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Card(
                      elevation: 0.0,
                      color: Colors.white54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const Menu();
                                },
                              ));
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.car_repair,
                                  size: 50,
                                ),
                                Text(
                                  "Cars",
                                  style: TextStyle(fontSize: 25),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 50),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const Menu();
                                },
                              ));
                            },
                            child: Row(
                              children: [
                                Icon(Icons.flight_sharp, size: 50),
                                Text(
                                  "Flights",
                                  style: TextStyle(fontSize: 25),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Column(
                    children: [
                      Text('Beccome a member!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35)),
                      Text('Sing in or Create an account',
                          style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
              ),
              Expanded(flex: 5,
                child: Container(
                  margin:
                  EdgeInsets.only(bottom: 20, left: 25, right: 25),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image(
                        image: NetworkImage(
                          'data:image/jpeg;base64,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',
                        ),
                        fit: BoxFit.fill,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          alignment: Alignment.centerRight,
                          child: Text('Travel the World',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
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