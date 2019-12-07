import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  TextEditingController eventCtrl = TextEditingController();
  TextEditingController dateCtrl = TextEditingController();
  TextEditingController timeCtrl = TextEditingController();
  TextEditingController locationCtrl = TextEditingController();

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
                                    "+Event",
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
                                padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                                child: Container(
                                  child: TextField(
                                    controller: eventCtrl,
                                    decoration: InputDecoration(
                                      hintText: 'Title',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                                child: Container(
                                  child: TextField(
                                    controller: dateCtrl,
                                    decoration: InputDecoration(
                                      hintText: 'mm/dd/yyyy',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                                child: Container(
                                  child: TextField(
                                    controller: timeCtrl,
                                    decoration: InputDecoration(
                                      hintText: 'Time',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                                child: Container(
                                  child: TextField(
                                    controller: locationCtrl,
                                    decoration: InputDecoration(
                                      hintText: 'Location',
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

          //////////////////////////////////////////////
          /* Events list tile design is needed here */
          //////////////////////////////////////////////

        ],
      ),
    );
  }
}