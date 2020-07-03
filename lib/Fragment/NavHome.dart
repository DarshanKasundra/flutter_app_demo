import 'package:flutter/material.dart';


class NavHome extends StatefulWidget {
  @override


  _NavHomeState createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override

  List<Widget> containers = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.white,
    ), Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    )
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'all',
              ),
              Tab(
                text: "Type 1",
              ),
              Tab(
                text: 'Type 2',
              ),
              Tab(
                text: "Type 3",
              ),
              Tab(
                text: 'Type 4',
              ),
              Tab(
                text: "Type 5",
              ),
              Tab(
                text: 'Type 6',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );

  }
}