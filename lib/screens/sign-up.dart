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
        color: Colors.brown[500],
        /* decoration: BoxDecoration(
            /* gradient: LinearGradient(
              colors: [Colors.purple[200], Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight), */
            ), */
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(width: 200.0),
            Column(
              children: <Widget>[
                Container(
                  width: 850,
                  height: MediaQuery.of(context).size.height - 82,
                  child: Column(
                    children: <Widget>[
                      Divider(height: 50.0),
                      Text('Sign Up', style: TextStyle(fontSize: 80))
                    ],
                  ),
                ),
                Divider(height: 20.0),
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go Back'),
                    hoverColor: Colors.blue[100],
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Colors.black),
                    )),
              ],
            ),
            Container(width: 200.0),
          ],
        ),
      ),
    );
  }
}
