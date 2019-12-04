import 'package:flutter/material.dart';
import 'package:productivist/models/user.dart';
import 'package:productivist/screens/project_page.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:productivist/screens/calendar_page.dart';
import 'package:intl/intl.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
        backgroundColor: Color.fromRGBO(10, 51, 75, 1),
      ),
      backgroundColor: Color.fromRGBO(10, 51, 75, 1),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text(
                      "Welcome ${currentUser.name}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 46.0,
                          fontFamily: "Calibre-Semibold",
                          letterSpacing: 1.0),
                    ),
                  )
                ],
              ),
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
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(10, 51, 75, 1),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                height: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Card(
                      color: Color.fromRGBO(15, 37, 51, 0),
                      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              width: 250,
                              child: Text(
                                "Tasks",
                                style: TextStyle(
                                  fontSize: 36.0,
                                  color: Colors.grey[350],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(15, 37, 51, 0),
                      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              width: 250,
                              child: Text(
                                "Events",
                                style: TextStyle(
                                  fontSize: 36.0,
                                  color: Colors.grey[350],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromRGBO(15, 37, 51, 0),
                      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(
                              width: 250,
                              child: Text(
                                "Reminders",
                                style: TextStyle(
                                  fontSize: 36.0,
                                  color: Colors.grey[350],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
