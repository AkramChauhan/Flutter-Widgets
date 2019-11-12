import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SafeAreaWidget extends StatefulWidget {

  @override
  _SafeAreaWidgetState createState() => _SafeAreaWidgetState();
}

class _SafeAreaWidgetState extends State<SafeAreaWidget> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("SafeArea Widget"),
      ),
body: Container(
  child: SafeArea(
    child: ListView(
      children: <Widget>[
        Container(
          color:Colors.lightBlue,
          child: ListTile(
            title:Text("How to use \nSafeArea Widget?",style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
            ),
            subtitle: Text("Click here to learn more"),
            onTap: () async {
              const url = 'https://flutterian.com/how-to-use-safearea-widget-flutter-widgets/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            trailing: Icon(Icons.insert_link),
          ),
          padding:EdgeInsets.all(20.0),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
        ListTile(
          onTap: (){},
          title: Text("This is simple Text in List View"),
          subtitle: Text("Flutterian.com"),
        ),
      ],
    ),
  ),
),
    );
  }
}