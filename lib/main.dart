import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
// import 'dart:io';

// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff25D366),
                title: Text('Search whatsapp'),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter the number',
                        hintText: 'Number',
                        icon: Icon(Icons.phone,size: 36,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff25D366),
                            width: 5.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                     ],
                    ),
                  ),

                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter the message',
                          hintText: 'message',
                          icon: Icon(Icons.message, size: 36,),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff25D366),
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),




                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[
                  //     Container(
                  //       child: new Column(
                  //         children: <Widget>[
                  //           new RaisedButton(
                  //             color: Colors.greenAccent,
                  //             onPressed: () => print('running Row1'),
                  //             child: new Text("Press here"),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        color:Colors.greenAccent,
                        onPressed: () => print("rubnning"),
                        child: new Text('send'),
                      )
                    ],
                  ),
                ],
              ),

              floatingActionButton: FloatingActionButton(
                onPressed: null,
                tooltip: 'Share',
                child: Icon(Icons.share),
              ),

            ),

          ),
        ],
      ),
    );
  }
}
