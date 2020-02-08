import 'package:flutter/material.dart';

import 'package:flutter_app/LogInPage.dart';

void main() => runApp(MaterialApp(
home: MyAppLogIn())
);
//---------------------------------------------------------------------------------------------------------

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {

  void dangerAlert() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DangerAlert()),
    );
  }

  void findRoute() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FindRoute()),
    );
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    child: new Text("Danger Alert!"),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}



class FindRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('DIRECTIONS'),             // this function can be changed accordingly
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => null),
            );
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class DangerAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danger Alert"),        // this function can be changed accordingly
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => null),
            );
            // Navigate back to first route when tapped.
          },
          child: Text('DANGER!!!!!'),
        ),
      ),
    );
  }
}


