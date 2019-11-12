import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

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

    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Widgets"),
          //elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        ),
        body: DashboardScreen(),
      ),
    );
  }
}
