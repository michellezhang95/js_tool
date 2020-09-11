import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        color: Colors.brown[50],
        /* decoration: BoxDecoration(
            /* gradient: LinearGradient(
              colors: [Colors.purple[200], Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight), */
            ), */
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 500,
                height: MediaQuery.of(context).size.height - 82,
                child: Column(
                  children: <Widget>[
                    Divider(height: 50.0, color: Colors.transparent),
                    Text('Sign Up', style: TextStyle(fontSize: 60)),
                    Divider(height: 50.0, color: Colors.transparent),
                    Text('Your first name'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                    Divider(height: 30.0, color: Colors.transparent),
                    Text('Your email'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                    Divider(height: 30.0, color: Colors.transparent),
                    Text('Your password'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                    Divider(height: 40.0, color: Colors.transparent),
                    FlatButton(
                        onPressed: () {
                          print('sign up pressed');
                        },
                        minWidth: 200.0,
                        child: Text('Sign up'),
                        color: Colors.yellow[200],
                        hoverColor: Colors.amber[500],
                        height: 50.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.amber[500]),
                        )),
                    Divider(height: 30.0, color: Colors.transparent),
                  ],
                ),
              ),
              Divider(height: 20.0, color: Colors.transparent),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                  minWidth: 150,
                  hoverColor: Colors.blue[100],
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.black),
                  )),
              //Divider(height: 20.0, color: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }
}
