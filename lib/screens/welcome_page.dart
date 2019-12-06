import 'package:flutter/material.dart';
import 'package:productivist/models/user.dart';
import 'package:productivist/screens/project_page.dart';
import 'package:productivist/screens/reminder_page.dart';
import 'package:productivist/screens/task_page.dart';
import 'package:productivist/screens/event_page.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:productivist/screens/calendar_page.dart';
import 'package:intl/intl.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //String formattedDate = DateFormat('EEEE MMMM d y').format(DateTime.now());
  String formattedDate = DateFormat('EEE d MMM').format(DateTime.now());

  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1d284d),
      ),
      backgroundColor: Color(0xFF1d284d),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Color.fromRGBO(10, 51, 75, 1),
              ),
            ),
            ListTile(
              title: Text('Projects'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProjectPage()));
                setState(() {});
              },
            ),
            ListTile(
              title: Text('Calendar'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalendarPage()));
                setState(() {});
              },
            ),
          ],
        ),
      ),

      //////////// UI Design begins here ///////////
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                //Welcome message with currentUser name
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                      child: Text(
                        "Welcome ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontFamily: "Montserrat-SemiBold",
                            letterSpacing: 1.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 20, 10),
                      child: Text(
                        "${currentUser.name}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontFamily: "Montserrat-Thin",
                            letterSpacing: 1.0),
                      ),
                    )
                  ],
                ),

                // Current date under welcome message
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 5, 10, 30),
                      child: Text(
                        "$formattedDate",
                        style: TextStyle(
                            color: Colors.white30,
                            fontSize: 20.0,
                            fontFamily: "Calibre-Semibold",
                            letterSpacing: .5),
                      ),
                    )
                  ],
                ),

                // Holds section buttons (tasks, events, reminders)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Reminders button
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                          width: 110,
                          height: 110,
                          child: RaisedButton(
                            elevation: 10,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                child: Text("Reminders",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontFamily: 'Montserrat-Medium',
                                        fontSize: 16)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => RemindersPage()));
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(16.0),
                            ),
                            color: Color(0xFF071030),
                          )),
                    ),

                    //Events button
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: SizedBox(
                          width: 110,
                          height: 110,
                          child: RaisedButton(
                            elevation: 10,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                child: Text("Events",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontFamily: 'Montserrat-Medium',
                                        fontSize: 16)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => EventsPage()));
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(16.0),
                            ),
                            color: Color(0xFF071030),
                          )),
                    ),

                    //Tasks button
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: SizedBox(
                          width: 110,
                          height: 110,
                          child: RaisedButton(
                            elevation: 10,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                child: Text("Tasks",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontFamily: 'Montserrat-Medium',
                                        fontSize: 16)),
                              ),
                            ),
                            onPressed: () {
                               Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => TasksPage()));
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(16.0),
                            ),
                            color: Color(0xFF071030),
                          )),
                    ),
                  ],
                ),

                // Calendar where forecast should be
                Container(
                  child: TableCalendar(
                    calendarStyle: CalendarStyle(
                      todayColor: Color.fromRGBO(10, 51, 75, 1),
                      selectedColor: Color(0xff01A0C7),
                    ),
                    calendarController: _controller,
                    initialCalendarFormat: CalendarFormat.week,
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
