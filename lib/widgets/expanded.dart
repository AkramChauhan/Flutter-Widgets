import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpandedWidget extends StatefulWidget {

  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {

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
        title: Text("Expanded Widget"),
      ),
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                color:Colors.lightBlue,
                child: ListTile(
                  title:Text("How to use \nExpanded Widget?",style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                  ),
                  subtitle: Text("Click here to learn more"),
                  onTap: () async {
                    const url = 'https://flutterian.com/how-to-use-expanded-widget-flutter-widgets/';
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
                title: Text("Example with Row"),
                subtitle: Text("Flutterian.com"),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding:EdgeInsets.all(20.0),
                      child: Text("1",style: TextStyle(
                        color: Colors.white,
                      ),),
                      color: Colors.indigo,
                    ),
                    Expanded(
                      child: Container(
                        padding:EdgeInsets.all(20.0),
                        child: Text("This is Expanded",style: TextStyle(
                          color: Colors.white,
                        ),),
                        color: Colors.purple,
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.all(20.0),
                      child: Text("2",style: TextStyle(
                        color: Colors.white,
                      ),),
                      color: Colors.indigo,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding:EdgeInsets.all(20.0),
                        child: Text("This is Expanded",style: TextStyle(
                          color: Colors.white,
                        ),),
                        color: Colors.purple,
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.all(20.0),
                      child: Text("2",style: TextStyle(
                        color: Colors.white,
                      ),),
                      color: Colors.indigo,
                    ),

                    Container(
                      padding:EdgeInsets.all(20.0),
                      child: Text("3",style: TextStyle(
                        color: Colors.white,
                      ),),
                      color: Colors.indigo,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              ListTile(
                onTap: (){},
                title: Text("Example with Column"),
                subtitle: Text("Flutterian.com"),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Container(
                height: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding:EdgeInsets.all(20.0),
                          child: Text("1",style: TextStyle(
                            color: Colors.white,
                          ),),
                          color: Colors.indigo,
                        ),
                        Expanded(
                          child: Container(
                            padding:EdgeInsets.all(20.0),
                            child: Text("This is Expanded",style: TextStyle(
                              color: Colors.white,
                            ),),
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          padding:EdgeInsets.all(20.0),
                          child: Text("2",style: TextStyle(
                            color: Colors.white,
                          ),),
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding:EdgeInsets.all(20.0),
                            child: Text("This is Expanded",style: TextStyle(
                              color: Colors.white,
                            ),),
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          padding:EdgeInsets.all(20.0),
                          child: Text("2",style: TextStyle(
                            color: Colors.white,
                          ),),
                          color: Colors.indigo,
                        ),
                        Container(
                          padding:EdgeInsets.all(20.0),
                          child: Text("3",style: TextStyle(
                            color: Colors.white,
                          ),),
                          color: Colors.indigo,
                        ),
                      ],
                    ),
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}