import 'dart:async';

//import 'package:agile/screens/congratulations.dart';
import 'package:agile/screens/water.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smart_flare/smart_flare.dart';

class WaterCalculator extends StatefulWidget {

  final int totalGlasses;
  final double percentage;
  WaterCalculator({this.totalGlasses, this.percentage});
  @override
  _WaterCalculatorState createState() => _WaterCalculatorState(this.totalGlasses, this.percentage);
}
int currentGlasses = 0;
class _WaterCalculatorState extends State<WaterCalculator> {
  int totalGlasses;
  // int currentGlasses = 0;
  double percentage ;
  _WaterCalculatorState(this.totalGlasses, this.percentage);
  List<Choice> choices = const <Choice>[
    const Choice(title: 'Confirm', icon: Icons.check),
    const Choice(title: 'Cancel', icon: Icons.clear),
  ];

  decrement(){
    if(currentGlasses==0){
      setState(() {
        Fluttertoast.showToast(
        msg: "There aren't any glasses left",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.blue,
        fontSize: 16.0
    );
      });
      
    return ;
    }
    else if( currentGlasses <= totalGlasses){
      setState(() {
        currentGlasses--;
        percentage = currentGlasses/totalGlasses;
      });
    }

  }
  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              
              content:Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: <Widget>[
                              Container(
                                child: Center(
                                child: SmartFlareActor(
                                height:double.infinity,
                                width: double.infinity,
                                filename: "assets/rive/pataka.flr",
                                startingAnimation: 'pataka', 
                                    ),
                              ),
                                 ),
                                 Container(
                                child: Center(
                                child: SmartFlareActor(
                                height:double.infinity,
                                width: double.infinity,
                                filename: "assets/rive/trophy.flr",
                                startingAnimation: 'trophy_success', 
                                    ),
                              ),
                                 ),
                                Text("Congratulations! You completed today's goal!", 
                                style: TextStyle(fontSize: 30))
                  ],
                ),
              ),
              
            ));
  }

  increment(){

    setState(() {
      currentGlasses++;
      percentage= currentGlasses/totalGlasses;
      
       if(currentGlasses==totalGlasses){
      _showMaterialDialog();
      Timer(Duration(seconds: 3), (){
         setState(() {
      isSetData=true;
      currentGlasses=0;
      totalGlasses=0;
      percentage=0.0;
    });
      });
     
      Timer(Duration(seconds: 5),(){
        Navigator.push(context, PageTransition(child: WaterTracker(), type: PageTransitionType.fade));
      });
    }
    });
  }
    
   void onItemMenuPress(Choice choice) {
    if (choice.title == 'Confirm') {
      setState(() {
        isSetData= true;
        currentGlasses=0;
        totalGlasses=0;
        Navigator.push(context, PageTransition(child: WaterTracker(), type: PageTransitionType.fade));
      });
    } else if (choice.title=='Cancel'){
      return ;
    }
  }

  
  startAfresh(){
    
       
      return PopupMenuButton<Choice>(
        color: Colors.white,
            onSelected: onItemMenuPress,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                    value: choice,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          choice.icon,
                          color: Colors.grey[800],
                        ),
                        Container(
                          width: 10.0,
                        ),
                        Text(
                          choice.title,
                          style: TextStyle(color:Colors.grey[800]),
                        ),
                      ],
                    ));
              }).toList();
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Material(
        child: Stack(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(0, 153, 255,1),
                ),
            Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                 Container(
                   width: MediaQuery.of(context).size.width,
                      child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30,
                          color: Colors.blue,
                          onPressed: () {
                        
                            Navigator.pop(context, percentage);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: RaisedButton.icon(
                            
                            color: Colors.blue,
                            highlightColor: Colors.blue[200],
                            elevation: 0.9,
                            onPressed: (){},
                            label: Text("Start Afresh", style: TextStyle(color: Colors.white),),
                            icon: startAfresh(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:20),
                    CircularPercentIndicator(
                    radius: 200.0,
                    lineWidth: 10.0,
                    percent: percentage,
                    
                    center: Container(
                              height: 130,
                              width: 100,
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage("assets/images/cuteglass.png"),
                                   fit: BoxFit.cover,
                                 )
                               ),
                                 ),
                    backgroundColor: Colors.grey[400],
                    progressColor: Colors.blue,
                ),
                ],
              ),
                 ),
              SizedBox(height: MediaQuery.of(context).size.height*0.15),
                  Container(
                    width: MediaQuery.of(context).size.width *0.95,
                    height:MediaQuery.of(context).size.height*0.3,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                            child: IconButton(
                            iconSize: 50,
                            icon: Icon(Icons.remove),
                            color: Colors.blue,
                            highlightColor: Colors.grey[300],
                            onPressed: ()=>decrement(),
                          ),
                        ),
                        Container(
                          child: Text("$currentGlasses / $totalGlasses", 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                            child: IconButton(
                            iconSize: 50,
                            icon: Icon(Icons.add),
                            color: Colors.blue,
                            highlightColor: Colors.grey[300],
                            onPressed: ()=>increment(),
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height:50),
              ],
            ),
            Center(
                        child: Container(
                      height: MediaQuery.of(context).size.height*0.14,
                      width: MediaQuery.of(context).size.height*0.14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.14),
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromRGBO(0, 153, 255,1),
                              style: BorderStyle.solid,
                              width: 5.0)),
                      child: Center(
                        child: Icon(
                                Icons.arrow_upward,
                                size: 60.0,
                                color: Color.fromRGBO(0, 153, 255,1) ,
                            ),
                      ),
                    ),
            ),
          ]
        )
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

