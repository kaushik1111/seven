
import 'package:flutter/material.dart';
import 'package:seven/third.dart';

import 'appdesign.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          toolbarHeight: 130,
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
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const App();
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
        body: Column(
            children: [
              DefaultTabController(
                  length: 4, // length of tabs
                  initialIndex: 0  ,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 30,),
                          child: TabBar(
                            isScrollable: true,


                            onTap: (value) {},
                            tabs: [
                              Container(margin: EdgeInsets.only(bottom: 10),child: Text('Rounde Trip',style: TextStyle(color: Colors.black,fontSize: 20))),
                              Container(margin: EdgeInsets.only(bottom: 10),child: Text('One Way',style: TextStyle(color: Colors.black,fontSize: 20))),
                              Container(margin: EdgeInsets.only(bottom: 10),child: Text('Multiy-city',style: TextStyle(color: Colors.black,fontSize: 20)))
                            ],
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 15,),
                            height: 450,
                            padding: const EdgeInsets.all(20),
                            //height of TabBarView
                            child: TabBarView(children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: SingleChildScrollView(
                                    child: Column(children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) {
                                              return const Third();
                                            },
                                          ));
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,),
                                          margin: EdgeInsets.only(bottom: 20),
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Row(children: [Icon(Icons.airplanemode_active_outlined,size: 30),
                                            Container(margin: EdgeInsets.only(left: 30),child: Text('Flying from',style: TextStyle(fontSize: 25,),))]),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) {
                                              return const Third();
                                            },
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,),
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Row(children: [Icon(Icons.airplanemode_active_outlined,size: 30),
                                            Container(margin: EdgeInsets.only(left: 30),child: Text('Flying to',style: TextStyle(fontSize: 25,),))]),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) {
                                              return const Third();
                                            },
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,),
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Row(children: [Icon(Icons.calendar_today,size: 30),
                                            Container(margin: EdgeInsets.only(left: 30),child: Text('Slect dates',style: TextStyle(fontSize: 25,),))]),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) {
                                              return const Third();
                                            },
                                          ));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,),
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Row(children: [Icon(Icons.account_circle,size: 30),
                                            Container(margin: EdgeInsets.only(left: 30),child: Text('Travalers',style: TextStyle(fontSize: 25,),))]),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 35,bottom: 0),
                                        padding: EdgeInsets.only(top: 20,bottom: 20,left: 150,right: 150),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text('Search',style: TextStyle(fontSize: 22,color: Colors.white)),
                                      ),

                                    ]),
                                  ),
                                ),
                              ),

                            ]))
                      ]))
            ]),

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
        ));
  }
}