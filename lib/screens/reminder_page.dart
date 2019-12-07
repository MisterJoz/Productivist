import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:productivist/models/user.dart';
import 'package:intl/intl.dart';

class RemindersPage extends StatefulWidget {
  @override
  _RemindersPageState createState() => _RemindersPageState();
}

class _RemindersPageState extends State<RemindersPage> {
  String formattedDate = DateFormat('EEE d MMM').format(DateTime.now());

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
                      "Reminders",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
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
                    itemCount: currentUser.reminders.length,
                    itemBuilder: (_, i) {
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
                          secondary: Text(
                            "$formattedDate",
                            style: TextStyle(color: Colors.red),
                            textAlign: TextAlign.end,
                          ),
                          value: currentUser.reminders[i].completed,
                          onChanged: (value) {
                            currentUser.reminders[i].completed =
                                !currentUser.reminders[i].completed;
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
