import 'package:flutter/material.dart';
//
//
//
void main() => runApp(MaterialApp(
  home: HomeScreen())

);



class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int number = 0;

  void dangerAlert() {
    setState(() {
      number = number - 1;
    });
  }

  void findRoute() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.black,
        appBar: new AppBar(
          title: new Text(""),
          backgroundColor: Colors.black,
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('images/Cautious.png'),
                fit: BoxFit.cover,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: findRoute,
                    child: new Text("Find me a route!"),
                  ),
                  new RaisedButton(
                    onPressed: dangerAlert,
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Danger Alert!",
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}