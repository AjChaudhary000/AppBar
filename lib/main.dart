import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppBar",
      home: new _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  @override
  __HomePageState createState() => __HomePageState();
}

String a = "null";

class __HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("MY AppBar"),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: null),
              IconButton(icon: Icon(Icons.settings), onPressed: null),
              PopupMenuButton(onSelected: (value) {
                setState(() {
                  a = value;
                });
              }, itemBuilder: (BuildContext context) {
                return <PopupMenuEntry>[
                  PopupMenuItem(
                    child: Text("save"),
                    value: "save",
                  ),
                  PopupMenuItem(
                    child: Text("Edit"),
                    value: "edit",
                  ),
                  PopupMenuItem(
                    child: Text("Delete"),
                    value: "delete",
                  )
                ];
              })
            ],
            bottom: TabBar(tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Contacts",
                icon: Icon(Icons.contacts),
              )
            ]),
          ),
          body: new Center(
            child: TabBarView(
              children: <Widget>[new _Tabbar1(), new _Tabbar2()],
            ),
          ),
        ));
  }
}

class _Tabbar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Text(
        "Hello",
        style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
      ),
    );
  }
}

class _Tabbar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Text(
        " my Selected Value is :- $a",
        style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
      ),
    );
  }
}
