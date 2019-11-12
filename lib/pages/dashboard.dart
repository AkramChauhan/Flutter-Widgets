import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/safearea.dart';

const String testDevice = '';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xffe8e8e8),
      padding: EdgeInsets.only(bottom:20.0, top:20.0 ,left:10.0, right: 10.0),
      child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0, top:20.0 ,left:20.0, right: 20.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.blueGrey[50],
                        Colors.white,
                      ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset.zero,
                      blurRadius: 3.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => SafeAreaWidget()
                        )
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("SafeArea Widget",style: TextStyle(
                        fontSize:24.0,
                        color:Colors.purple,
                      )),
                      Padding(padding: EdgeInsets.all(5.0)),
                      Text("A widget that sets its child by enough padding to avoid intrusions by the operating system",style: TextStyle(
                        fontSize:17.0,
                        color:Colors.black,
                      )),
                      Padding(padding: EdgeInsets.all(5.0),),
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}