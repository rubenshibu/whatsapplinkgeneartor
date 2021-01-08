import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';

main() => runApp(File());

class File extends StatefulWidget {
  @override
  _FileState createState() => _FileState();
}

class _FileState extends State<File> {
  String _fileName;
  String _path;
  Map<String, String> _paths;
  String _extention;
  bool _loadingPath = false;
  bool _multiPick = false;
  bool _hasValidMime = false;
  FileType _pickingType;
  TextEditingController _controller = new TextEditingController();
  @override
  void initState(){
    _controller.addListener(() => _extention = _controller.text );
  }
  void _openFileExplorer() async {
    if(_pickingType != FileType.custom || _hasValidMime){
      
    }
  }

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
