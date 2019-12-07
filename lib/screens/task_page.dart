import 'package:flutter/material.dart';
import 'package:productivist/models/user.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(15, 37, 51, 1),
        ),
        backgroundColor: Color.fromRGBO(15, 37, 51, 1),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Events",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontFamily: "Montserrat-SemiBold",
                          letterSpacing: -1),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(165, 0, 0, 0),
                      child: RawMaterialButton(
                        shape: CircleBorder(),
                        fillColor: Color(0xFF071030),
                        elevation: 10,
                        child: Icon(
                          Icons.add,
                          size: 50,
                          color: Colors.tealAccent[400],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: currentUser.tasks.length,
                    itemBuilder: (_, i) {
                      return Dismissible(
                        key: Key(UniqueKey().toString()),
                        onDismissed: (direction) {
                          currentUser.tasks.removeAt(i);
                          setState(() {});
                        },
                        background: Container(
                          color: Colors.red,
                        ),
                        child: CheckboxListTile(
                          checkColor: Colors.white,
                          activeColor: Color(0xff01A0C7),
                          title: !currentUser.tasks[i].completed
                              ? Text(
                                  currentUser.tasks[i].task,
                                  style: TextStyle(color: Colors.grey[100]),
                                )
                              : Text(
                                  currentUser.tasks[i].task,
                                  style: TextStyle(
                                      color: Colors.grey[20],
                                      decoration: TextDecoration.lineThrough),
                                ),
                          value: currentUser.tasks[i].completed,
                          onChanged: (value) {
                            currentUser.tasks[i].completed =
                                !currentUser.tasks[i].completed;
                            setState(() {});
                          },
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
