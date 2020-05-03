import 'package:agile/screens/water.dart';
import 'package:agile/screens/workout.dart';
import 'package:agile/screens/yoga.dart';
//import 'package:agile/screens/workout.dart';
//import 'package:agile/screens/yoga.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SedgwickAve",
      ),
      home: Workout(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key}) : super(key: key);
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AGILE'),
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Yoga(),
            Workout(),
            WaterTracker(),
          ],
        )
      )
    );
  }


