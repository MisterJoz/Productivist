import 'package:flutter/material.dart';
import 'package:productivist/models/user.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(10, 51, 75, 1),
      // ),
      backgroundColor: Color.fromRGBO(10, 51, 75, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 70, 20, 10),
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
                      "December 1, 2019",
                      style: TextStyle(
                          color: Colors.white30,
                          fontSize: 20.0,
                          fontFamily: "Calibre-Semibold",
                          letterSpacing: .5),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
