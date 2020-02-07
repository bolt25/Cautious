import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home())

);


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cautious!'),
        centerTitle: true,
      ),
      body: Center(
          child: Image(
            image: AssetImage('images/Cautious!.png'),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Find a Routed',
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}

