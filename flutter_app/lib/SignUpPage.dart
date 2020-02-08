import 'package:flutter/material.dart';

void main() {
  runApp(new MyAppSignUp());
}
class MyAppSignUp extends StatelessWidget {

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
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        'images/welcomePage.png',
                        fit:BoxFit.fill,
                        width: 75.0,
                        height: 75.0,
                      )
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Name: ",
                        style: new TextStyle(fontSize:26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(
                          child:new TextField(
                        style: new TextStyle(fontSize:20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto"),
                      ),
                      ),
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "email Id: ",
                        style: new TextStyle(fontSize:26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(

                      child: new TextField(
                        style: new TextStyle(fontSize:20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto"),
                      ),
                      ),
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Phone no.: ",
                        style: new TextStyle(fontSize:26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(
                          child: new TextField(
                            keyboardType: TextInputType.number,
                            style: new TextStyle(fontSize:20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto"),
                      ),
                      ),
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Emergenct no.: ",
                        style: new TextStyle(fontSize:26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(
                          child:new TextField(
                            keyboardType: TextInputType.number,
                            style: new TextStyle(fontSize:20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto"),
                      ),
                      ),
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Password: ",
                        style: new TextStyle(fontSize:26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(
                          child: new TextField(
                        style: new TextStyle(fontSize:20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto"),
                            obscureText: true,
                      ),
                      ),
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Confirm Password: ",
                        style: new TextStyle(fontSize:26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(
                          child: new TextField(
                        style: new TextStyle(fontSize:20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Roboto"),
                            obscureText: true,
                      ),
                      ),
                    ]

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(key:null, onPressed:buttonPressed,
                          color: Colors.white,
                          child:
                          new Text(
                            "Sign Me Up!",
                            style: new TextStyle(fontSize:26.0,
                                color: Colors.black,
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
  void buttonPressed(){}

}

