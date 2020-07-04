import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetProfile extends StatefulWidget {
  @override
  MySetProfile createState() => new MySetProfile();
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class MySetProfile extends State<SetProfile> {
  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.lightBlue[50],
        body: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.lightBlue[50],
            child: new SingleChildScrollView(
            child: new ConstrainedBox(
            constraints: new BoxConstraints(),
            child: new Container(
              child: new Center(
                  child: new Column(children: [
                new Padding(padding: EdgeInsets.only(top: 50.0)),
                new Text(
                  'Profile',
                  style: new TextStyle(
                      color: hexToColor("#1A348A"), fontSize: 25.0,fontFamily: 'Poppins' ),
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                new CircleAvatar(
                  backgroundImage: AssetImage('images/user.jpg'),
                  radius: 50,
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Full Name",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Name can not be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Contact Number",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                   ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Contact number cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Flexible(
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Date of Birth",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "DOB cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.datetime,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(left: 10.0)),
                    new Flexible(
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Age",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "Age cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Gender",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                   ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Gender number cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Flexible(
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Height(cm)",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "Height cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(left: 10.0)),
                    new Flexible(
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Weight(kg)",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "Weight cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Blood Group",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                   ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Blood Group number cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Address",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "Weight cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Allergies(if any, specify)",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                new Padding(padding: EdgeInsets.only(top: 20.0)),
                RaisedButton(
                child: Text('Save'),
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  // save data 
                },
              ),
                ])),
            ),),
            )));
  }
}