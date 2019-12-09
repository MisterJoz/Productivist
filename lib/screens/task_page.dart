import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:productivist/models/user.dart';
import 'package:productivist/models/task.dart';
import 'dart:async';
import 'package:productivist/screens/datetime_picker.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  TextEditingController taskCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1d284d),
      ),
      backgroundColor: Color(0xFF1d284d),
      body: Container(
        child: Column(
        children: <Widget>[

          // Title row with add button [EDIT TO ADD NEW REMINDER]
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Row(
              children: <Widget>[
                Text(
                  "Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: "Montserrat-SemiBold",
                      letterSpacing: -1),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(190, 0, 0, 0),
                  child: RawMaterialButton(
                    shape: CircleBorder(),
                    fillColor: Color(0xFF071030),
                    elevation: 10,
                    child: Icon(
                      Icons.add,
                      size: 50,
                      color: Colors.tealAccent[400],
                    ),
                    onPressed: () {
                      //showDialog goes here
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 15),
                                  child: Text(
                                    "+Task",
                                    style: TextStyle(
                                      color: Color(0xFF071030),
                                      fontFamily: 'Montserrat-Bold',
                                      fontSize: 25,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                                child: Container(
                                  child: TextField(
                                    controller: taskCtrl,
                                    maxLines: 2,
                                    decoration: InputDecoration(
                                      hintText: 'Description...',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(bottom: 40),
                                  child: Material(
                                    elevation: 5.0,
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.tealAccent[400],
                                    child: MaterialButton(
                                      minWidth: 200,
                                      padding: EdgeInsets.fromLTRB(
                                          40, 5, 40, 5),
                                      onPressed: () {},
                                      child: Text("Submit",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 20)
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                  )),
                            ],
                          ),
                        );
                      },
                    );
                    },
                  ),
                ),

              ]
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(color: Colors.white),
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
                            currentUser.tasks[i].completed == true
                                ? currentUser.completed
                                    .add(currentUser.tasks[i])
                                : currentUser.completed
                                    .remove(currentUser.tasks[i].task);
                            print(currentUser.completed);
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
      ),

    );
  }
}