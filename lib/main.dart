import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'WhatsApp Link Generator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Whatsapp Link Generator'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  TextEditingController _phone = new TextEditingController();
  TextEditingController _message = new TextEditingController();

  void _showDialog(String url) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("WhatsApp Link"),
          content: new Text(url),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Share"),
              onPressed: () {
                Share.share("My WhatsApp: ${url}");
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0,),
            TextField(
              decoration: new InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  labelText: 'WhatsApp phone number',
                  hintText: 'Number',
                  icon: new Icon(
                    Icons.phone,
                    size: 24,
                  )),
              keyboardType: TextInputType.phone,
              controller: _phone,
            ),
            SizedBox(
              height: 25.0,
            ),
            TextField(
              decoration: new InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  labelText: 'Message',
                  hintText: 'Message',
                  icon: new Icon(
                    Icons.message,
                    size: 24,
                  )),
              autocorrect: true,
              keyboardType: TextInputType.text,
              controller: _message,
            ),
            SizedBox(
              height: 12,
            ),
            Text("Any Simple message"),
            SizedBox(
              height: 12,
            ),
            RaisedButton(
              color: Colors.teal,
              child: Text(
                "send",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                // String url = "https://wa.me/${_phone.text}?text=${_message.text}";
                String url = "wa.me/+91${_phone.text}?text=${_message.text}";
                _launchURL(context, url);
                // _showDialog(url);
              },
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'team T E R M I N A L ',
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  Icon(
                    Icons.favorite,
                    size: 15.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL(BuildContext context, String url) async {
  final uri = 'https://$url';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    // CustomWidgets.buildErrorSnackbar(context, 'Error opening WhatsApp');
    throw 'Could not launch $uri';
  }
}
