import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'list.dart';

// ignore: camel_case_types
class List_View_Session extends StatefulWidget {
  @override
  _List_ViewState createState() => _List_ViewState();
}

// ignore: camel_case_types
class _List_ViewState extends State<List_View_Session> {
  @override
  void initState() {
    print("1 initState()");
    super.initState();
  }

  @override
  // ignore: must_call_super
  void didChangeDependencies() {
    print("2 didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(                           //return LayoutBuilder
        builder: (context, constraints) {
      return OrientationBuilder(                  //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("List View"),
          ),
          body: Container(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              child: TextField(
                                decoration: new InputDecoration(
                                  labelText: 'Enter Text',
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
                              ),
                              height:50.0,
                              padding: const EdgeInsets.only(bottom: 10),
                            ),
                            Container(
                              child: TextField(
                                decoration: new InputDecoration(
                                  labelText: "Description""",
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
                              ),
                              height:50.0,
                              padding: const EdgeInsets.only(bottom: 10),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceAround,
                                children: [
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    child: Text("Save"),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => List_Session(),),
                                      );
                                    },
                                  ),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    child: Text("Delete"),
                                    onPressed: () {
                                    },
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
    },
      );
      },
    );
  }
}