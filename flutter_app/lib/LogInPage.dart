import 'package:flutter/material.dart';
import 'package:flutter_app/SignUpPage.dart';
import 'package:flutter_app/main.dart';
void main() {
  runApp(new MyAppLogIn());
}

class MyAppLogIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text(''),
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: new Column(

            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/welcomePage.png'),
                        fit: BoxFit.cover,
                      ),
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(

                        "Username:  ",
                        style: new TextStyle(fontSize: 26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(

                        child: new TextField(
                          style: new TextStyle(fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto",),
                        ),
                      )
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Password:  ",
                        style: new TextStyle(fontSize: 26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(
                        child: TextField(

                          style: new TextStyle(fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto",
                          ),
                          obscureText: true,
                        ),
                      )
                    ]

                ),
              ),


              Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(key: null, onPressed: loginButton,
                          color: const Color(0xFFe0e0e0),
                          child:
                          new Text(
                            "LOG IN",
                            style: new TextStyle(fontSize: 19.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          )
                      ),

                      new RaisedButton(key: null, onPressed: signUpButton,
                          color: const Color(0xFFe0e0e0),
                          child:
                          new Text(
                            "SIGN UP",
                            style: new TextStyle(fontSize: 19.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          )
                      )
                    ]

                ),
              )
            ]

        ),
      ),

    );
  }

  void loginButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void signUpButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyAppSignUp()),
    );
  }
}