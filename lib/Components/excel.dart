import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Add Files"),
        ),
        body: Container(
          child: Center(
            child: Text("code"),
          ),
        ),
      ),
    );
  }
}
