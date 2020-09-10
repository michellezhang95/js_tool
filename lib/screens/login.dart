import 'package:flutter/material.dart';
import 'package:js_tool/screens/sign-up.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double imageWidth, imagePadding;
  double formWidth, fullWidth, formHeight, fullHeight, logoHeight;
  @override
  Widget build(BuildContext context) {
    imagePadding = 15.0;
    imageWidth = MediaQuery.of(context).size.width * 0.45;
    fullWidth = MediaQuery.of(context).size.width;
    formWidth = fullWidth - imageWidth - imagePadding;
    fullHeight = MediaQuery.of(context).size.height;
    logoHeight = 150;
    formHeight = fullHeight - logoHeight;
    return Material(
      //type: MaterialType.transparency,
      child: Row(children: <Widget>[
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                width: imageWidth,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/frontpage.png'),
                )),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: formWidth,
              height: logoHeight,
              /* decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      alignment: Alignment.center,
                      fit: BoxFit.contain)), */
            ),
            Divider(height: 100.0),
            Container(
              width: formWidth * 0.75,
              height: formHeight - 100.0,
              child: Column(
                children: <Widget>[
                  Text('Email'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                    ),
                  ),
                  Divider(height: 40.0, color: Colors.transparent),
                  Text('Password'),
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
                  Divider(
                    height: 60.0,
                    color: Colors.transparent,
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text('Log In'),
                      minWidth: 150,
                      color: Colors.amber[200],
                      hoverColor: Colors.amber,
                      height: 50.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.amber))),
                  Divider(height: 30.0, color: Colors.transparent),
                  FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text('Sign Up'),
                      minWidth: 150,
                      //color: Colors.purple[200],
                      hoverColor: Colors.purple[100],
                      height: 50.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.purple[100]))),
                ],
              ),
              //color: Colors.pink[100],
            ),
          ],
        ),
      ]),
    );
  }
}
