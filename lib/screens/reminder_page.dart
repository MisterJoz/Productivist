import 'package:flutter/material.dart';

class RemindersPage extends StatefulWidget {
  @override
  _RemindersPageState createState() => _RemindersPageState();
}

class _RemindersPageState extends State<RemindersPage> {
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
            child: Row(
              children: <Widget>[
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
                    onPressed: () {},
                  ),
                ),

              ]
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(color: Colors.white),
          ),

          //////////////////////////////////////////////
          /* Reminder list tile design is needed here */
          //////////////////////////////////////////////

        ],
      ),
    );
  }
}
