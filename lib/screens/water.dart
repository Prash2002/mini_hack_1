import 'package:agile/screens/waterCalculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
//import 'package:page_transition/page_transition.dart';
//import 'package:smart_flare/smart_flare.dart';

class WaterTracker extends StatefulWidget {
  @override
  _WaterTrackerState createState() => _WaterTrackerState();
}
int totalGlasses =0;
bool isSetData = true;

class _WaterTrackerState extends State<WaterTracker> with TickerProviderStateMixin {

  // int totalGlasses =0;
  double _percentage =0.0;
  
  AnimationController rippleController;
  Animation<double> rippleAnimation;
 
  // bool isSetData = true;

  @override
  void initState() {
    super.initState();
     rippleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1)
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        rippleController.reverse();
      } else if(status == AnimationStatus.dismissed) {
        rippleController.forward();
      }
    });
    rippleAnimation = Tween<double>(
      begin: 80.0,
      end: 90.0
    ).animate(rippleController);
    rippleController.forward();
  }

   dataButton() async {

     if(isSetData==false){
        
         final percentage2 =await  Navigator.push(context, 
         MaterialPageRoute(builder:(context)=> WaterCalculator(totalGlasses: totalGlasses, percentage: _percentage)));
         setState(() {
           _percentage=percentage2;
           totalGlasses = totalGlasses;
         });
     }
     else if(isSetData==true){
    await numberPicker();
    if(totalGlasses!=0){
    setState(() {
      isSetData = false;
    });
    print(isSetData);
    }
  }
   } 
   
   numberPicker()async {
     await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return new NumberPickerDialog.integer(
          minValue: 0,
          maxValue: 15,
          step: 1,
          initialIntegerValue: totalGlasses,
          title: Text("Set total number of glasses"),
        );
      },
    ).then((num value) {
      if (value != null) {
        setState(() => totalGlasses = value);
        
      }
    });
   }

  @override
  Widget build(BuildContext context) {
    totalGlasses= isSetData==true? 0: totalGlasses;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/water2.jpg"),
                fit: BoxFit.cover,
              )
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipPath(
                          clipper: ClippingClass(),
                            child: Container(
                            width: double.infinity,
                            height: 170,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                        Positioned(
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: (){},
                            color: Colors.black87,
                            iconSize: 30,
                          ),
                        ),
                        Positioned(
                          
                          child: Center(
                                child: Container(
                                padding: EdgeInsets.only(top:35),
                                child: Text("Water Tracker",
                                style: TextStyle(
                                  color: Colors.black,
                                  // fontSize: ScreenUtil().setSp(100, allowFontScalingSelf: true),
                                  fontSize: 40.0,
                                  fontFamily: "PermanentMarker",
                                )),
                             ),
                          ),
                            
                        ),
                      ],
                    ),
                    
                      Padding(
                        padding: EdgeInsets.only(left:20, right: 20, top:5, bottom: 15),
                          child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                            
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                Text("Why should we drink water regularly?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                    color: Colors.black, fontSize: 22 )),
                                    SizedBox(height: 5),
                                Text("Staying hydrated is the first rule of health and nutrition. Our bodies can supposedly last weeks without food and yet just a few days without water. This makes sense when you think that our bodies are made up of about 60% water and that being dehydrated can begin to affect us both physically and mentally.",
                                style:TextStyle(color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(bottom: 20,left:20,right:20),
                          child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                            
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text("Current total number of glasses set : $totalGlasses",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                            )
                          ),
                        ),
                      ),
                      

                      Align(
                        alignment: Alignment.bottomCenter,
                                            child: AnimatedBuilder(
                    animation: rippleAnimation,
                    builder: (context, child) => Container(
                        width: rippleAnimation.value,
                        height: rippleAnimation.value,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(.3)
                          ),
                          child: InkWell(
                            onTap: () {dataButton();},
                            child: Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.7)
                                  ),
                                  child: Center(
                                    //alignment: Alignment.center,
                                  child: isSetData? Text("Set Data"): 
                                  Container(
                                    width:50,
                                    height: 30,
                                    child: Text("Update Data", textAlign: TextAlign.center,)),
                                  ),
                                ),
                          ),
                        ),
                    ),
                  ),
                      ),
                  ],
                )
              ),
             ),
        ),
          ),
        );
    
    
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
    
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

 }