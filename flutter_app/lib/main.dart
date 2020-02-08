import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: MyApp())

);

class MyApp extends StatelessWidget {

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
                        style: new TextStyle(fontSize:26.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto"),
                      ),

                      Expanded(
                          child: TextField(

                        style: new TextStyle(fontSize:20.0,
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
                      new RaisedButton(key:null, onPressed:loginButton,
                          color: const Color(0xFFe0e0e0),
                          child:
                          new Text(
                            "LOG IN",
                            style: new TextStyle(fontSize:19.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          )
                      ),

                      new RaisedButton(key:null, onPressed:signUpButton,
                          color: const Color(0xFFe0e0e0),
                          child:
                          new Text(
                            "SIGN UP",
                            style: new TextStyle(fontSize:19.0,
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
  void signUpButton(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => null),
    );
  }

  void loginButton(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

}
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
              MaterialPageRoute(builder: (context) => HomeScreen()),
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
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
            // Navigate back to first route when tapped.
          },
          child: Text('DANGER!!!!!'),
        ),
      ),
    );
  }
}


