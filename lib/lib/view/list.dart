import 'package:flutter/material.dart';
import 'list_view.dart';

// ignore: camel_case_types
class List_Session extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List_Session> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("List Page"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => List_View_Session(),),
              );
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        )
    );
  }
}
