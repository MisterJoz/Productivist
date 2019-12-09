import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:productivist/models/user.dart';
import 'package:productivist/models/reminder.dart';
import 'package:intl/intl.dart';

class RemindersPage extends StatefulWidget {
  @override
  _RemindersPageState createState() => _RemindersPageState();
}

class _RemindersPageState extends State<RemindersPage> {
  TextEditingController reminderCtrl = TextEditingController();
  String formattedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1d284d),
      ),
      backgroundColor: Color(0xFF1d284d),
      body: ListView(
        children: <Widget>[
          // Title row with add button [EDIT TO ADD NEW REMINDER]
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
            child: Row(children: <Widget>[
              Text(
                "Reminders",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: "Montserrat-SemiBold",
                    letterSpacing: -1),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
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
                                    "+Reminder",
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
                                    controller: reminderCtrl,
                                    maxLines: 4,
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
            ]),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(color: Colors.white),
          ),

          /*Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: currentUser.reminders.length,
                    itemBuilder: (_, i) {
                      formattedDate = DateFormat('EEE d MMM')
                          .format(currentUser.reminders[i].remind_at);
                      return Dismissible(
                        key: Key(UniqueKey().toString()),
                        onDismissed: (direction) {
                          currentUser.reminders.removeAt(i);
                          setState(() {});
                        },
                        background: Container(
                          color: Colors.red,
                        ),
                        child: CheckboxListTile(
                          checkColor: Colors.white,
                          activeColor: Color(0xff01A0C7),
                          title: !currentUser.reminders[i].completed
                              ? Text(
                                  currentUser.reminders[i].text,
                                  style: TextStyle(color: Colors.grey[100]),
                                )
                              : Text(
                                  currentUser.reminders[i].text,
                                  style: TextStyle(
                                      color: Colors.grey[20],
                                      decoration: TextDecoration.lineThrough),
                                ),
                          subtitle: Text(
                            "$formattedDate",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          value: currentUser.reminders[i].completed,
                          onChanged: (value) {
                            currentUser.reminders[i].completed =
                                !currentUser.reminders[i].completed;
                            // currentUser.reminders[i].completed == true
                            //     ? currentUser.completed
                            //         .add(currentUser.reminders[i])
                            //     : currentUser.completed
                            //         .remove(currentUser.reminders[i].task);
                            print(currentUser.completed);
                            setState(() {});
                          },
                        ),
                      );
                    },
                  ),
                ),
              )*/
          
        ],
      ),
    );
  }
}
