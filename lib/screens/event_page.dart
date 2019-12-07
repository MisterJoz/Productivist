import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(15, 37, 51, 1),
      ),
      backgroundColor: Color.fromRGBO(15, 37, 51, 1),
      body: ListView(
        children: <Widget>[
          // Title row with add button [EDIT TO ADD NEW REMINDER]
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

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(color: Colors.white),
          ),

          //////////////////////////////////////////////
          /* Events list tile design is needed here */
          //////////////////////////////////////////////
        ],
      ),
    );
  }
}
