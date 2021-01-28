import 'package:flutter/material.dart';
import 'package:my_new_app/utills/demo_sqflite_helper.dart';

// ignore: camel_case_types
class Demo_Sqflite extends StatefulWidget {
  @override
  _Demo_SqfliteState createState() => _Demo_SqfliteState();
}

// ignore: camel_case_types
class _Demo_SqfliteState extends State<Demo_Sqflite> {
  final dbHelper=DatabaseHelper.instance;
  final name = TextEditingController();
  final age = TextEditingController();

  // ignore: non_constant_identifier_names
  final update_id = TextEditingController();
  // ignore: non_constant_identifier_names
  final update_name = TextEditingController();
  // ignore: non_constant_identifier_names
  final update_age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Demo"),
          ),
          body: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: TextField(
                        decoration: new InputDecoration(
                          labelText: 'Enter Name',
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                            borderSide: new BorderSide(
                              // color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                        ),
                        controller: name,
                      ),
                      height:60.0,
                      padding: const EdgeInsets.all(10),
                    ),
                    Container(
                      child: TextField(
                        decoration: new InputDecoration(
                          labelText: 'Enter Age',
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                            borderSide: new BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                        ),
                        controller: age,
                      ),
                      height:60.0,
                      padding: const EdgeInsets.all(10),
                    ),
                    Row(
                      children: [
                        Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Text("Insert"),
                            onPressed: () {
                              _insert();
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Demo_Sqflite(),),
                              );
                            },
                          ),
                          margin: const EdgeInsets.only(left: 50,top: 10),
                        ),
                        Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Text("Query"),
                            onPressed: () {
                              _query();
                            },
                          ),
                          margin: const EdgeInsets.only(left: 50,top: 10),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Text("Update"),
                            onPressed: () {
                              return showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text("Input"),
                                  content: ListView(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: TextField(
                                              decoration: new InputDecoration(
                                                labelText: 'Enter Id',
                                                border: new OutlineInputBorder(
                                                  borderRadius: const BorderRadius.all(
                                                    const Radius.circular(10.0),
                                                  ),
                                                  borderSide: new BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                              controller: update_id,
                                            ),
                                            width: 190,
                                            height:60.0,
                                            padding: const EdgeInsets.all(10),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: TextField(
                                              decoration: new InputDecoration(
                                                labelText: 'Enter Name',
                                                border: new OutlineInputBorder(
                                                  borderRadius: const BorderRadius.all(
                                                    const Radius.circular(10.0),
                                                  ),
                                                  borderSide: new BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                              controller: update_name,
                                            ),
                                            width: 190,
                                            height:60.0,
                                            padding: const EdgeInsets.all(10),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: TextField(
                                              decoration: new InputDecoration(
                                                labelText: 'Enter Age',
                                                border: new OutlineInputBorder(
                                                  borderRadius: const BorderRadius.all(
                                                    const Radius.circular(10.0),
                                                  ),
                                                  borderSide: new BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                              controller: update_age,
                                            ),
                                            width: 190,
                                            height:60.0,
                                            padding: const EdgeInsets.all(10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        _update();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Demo_Sqflite(),),
                                        );
                                      },
                                      child: Text("Update"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          margin: const EdgeInsets.only(left: 50,top: 10),
                        ),
                        Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Text("Delete"),
                            onPressed: () {
                              return showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text("Input"),
                                  content: ListView(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: TextField(
                                              decoration: new InputDecoration(
                                                labelText: 'Enter Id',
                                                border: new OutlineInputBorder(
                                                  borderRadius: const BorderRadius.all(
                                                    const Radius.circular(10.0),
                                                  ),
                                                  borderSide: new BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                              controller: update_id,
                                            ),
                                            width: 190,
                                            height:50.0,
                                            padding: const EdgeInsets.all(10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        _delete();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Demo_Sqflite(),),
                                        );
                                      },
                                      child: Text("Delete"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          margin: const EdgeInsets.only(left: 50,top: 10),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: ListView(
                              children: [
                                Card(
                                  child: ListTile(
                                    leading: Text("Image"),
                                    title: Text("name"),
                                    subtitle: Text("age"),
                                    trailing: Text("delete"),
                                  ),
                                )
                              ],
                            ),
                            height: 100,
                            width: 200,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        )
    );
  }

  void _insert() async{
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: name.text,
      DatabaseHelper.columnAge : age.text,
    };
    final id = await dbHelper.insert(row);
    print('inserted row id: $id');
  }

  void _query() async{
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach((row) => print(row));
  }

  void _update() async{
    Map<String, dynamic> row = {
      DatabaseHelper.columnId : int.parse(update_id.text),
      DatabaseHelper.columnName: update_name.text,
      DatabaseHelper.columnAge : update_age.text
    };
    final rowsAffected = await dbHelper.update(row);
    print('updated $rowsAffected row(s)');
  }

  void _delete() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnId : int.parse(update_id.text),
    };
    // final id = await dbHelper.queryRowCount();
    final rowsDeleted= await dbHelper.delete(row);
    print('deleted $rowsDeleted row(s): row $row');
  }
}
