import 'package:flutter/material.dart';

main() => runApp(File());

class File extends StatefulWidget {
  @override
  _FileState createState() => _FileState();
}

class _FileState extends State<File> {
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