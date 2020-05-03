import 'package:agile/screens/water.dart';
import 'package:agile/screens/workout.dart';
import 'package:agile/screens/yoga.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
//import 'package:agile/screens/workout.dart';
//import 'package:agile/screens/yoga.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, allowFontScaling: true);
    return  DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
              primarySwatch: Colors.indigo,
              brightness: brightness,
              fontFamily: "SedgwickAve",
            ),
        themedWidgetBuilder: (context, theme) {
          
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.orange
      //  ),
      theme: theme,
      // theme: ThemeData(
      //   fontFamily: "SedgwickAve",
      // ),
      home: MyHomePage(),
    );
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
void showChooser() {
    showDialog<void>(
        context: context,
        builder: (context) {
          return BrightnessSwitcherDialog(
            onSelectedTheme: (brightness) {
              DynamicTheme.of(context).setBrightness(brightness);
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('AGILE'),
      // ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.25),
          child: GestureDetector(
          onTap: showChooser,
          child: ListTile(
          leading: const Icon(Icons.lightbulb_outline),
          title: Text('Choose Theme'),
      ),
             ),
        ),
            GestureDetector(
                    onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => Yoga())),
                    child: Stack(
                children: <Widget>[
                  
                  Container(
                  margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.1),
                   width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.23,
                    decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red[200], Colors.red[500]],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0,8),
                      blurRadius: 8,
                    ),
                    
                  ],
                  borderRadius: BorderRadius.circular(30.0),
                    ),
                    // child: Text('HI')
                    ),
                  Positioned(
                    left: MediaQuery.of(context).size.width*0.2,
                    top: MediaQuery.of(context).size.height*0.06,
                    child: Text(
                      'Yoga',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            offset: Offset(0,2),
                            blurRadius: 2,
                          )
                        ]
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  ),
                  Positioned(
              left: MediaQuery.of(context).size.width*0.5,
               top: MediaQuery.of(context).size.height*0.0,
              child: SvgPicture.network(
                'https://image.flaticon.com/icons/svg/2647/2647625.svg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width*0.5,
                height: MediaQuery.of(context).size.height*0.23,
              ),
          )
                ],
              ),
            ),
             GestureDetector(
                    onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => Workout())),
                    child: Stack(
                children: <Widget>[
                  Container(
                  margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.1),
                   width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.23,
                    decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green[200], Colors.green[500]],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0,8),
                      blurRadius: 8,
                    ),
                    
                  ],
                  borderRadius: BorderRadius.circular(30.0),
                    ),
                    // child: Text('HI')
                    ),
                  Positioned(
                    left: MediaQuery.of(context).size.width*0.2,
                    top: MediaQuery.of(context).size.height*0.06,
                    child: Text(
                      'Workout',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            offset: Offset(0,2),
                            blurRadius: 2,
                          )
                        ]
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  ),
                  Positioned(
              left: MediaQuery.of(context).size.width*0.5,
               top: MediaQuery.of(context).size.height*0.0,
              child: SvgPicture.network(
                'https://image.flaticon.com/icons/svg/2548/2548537.svg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width*0.5,
                height: MediaQuery.of(context).size.height*0.23,
              ),
          )
                ],
              ),
            ),
            GestureDetector(
                    onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => WaterTracker())),
                    child: Stack(
                children: <Widget>[
                  Container(
                  margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.1),
                   width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.23,
                    decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue[200], Colors.blue[500]],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0,8),
                      blurRadius: 8,
                    ),
                    
                  ],
                  borderRadius: BorderRadius.circular(30.0),
                    ),
                    // child: Text('HI')
                    ),
                  Positioned(
                    left: MediaQuery.of(context).size.width*0.2,
                    top: MediaQuery.of(context).size.height*0.06,
                    child: Text(
                      'Water Tracker',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            offset: Offset(0,2),
                            blurRadius: 2,
                          )
                        ]
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  ),
                  Positioned(
              left: MediaQuery.of(context).size.width*0.45,
               top: MediaQuery.of(context).size.height*0.015,
              child: SvgPicture.network(
                'https://upload.wikimedia.org/wikipedia/commons/9/9b/Man_Drinking_Water_Cartoon.svg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width*0.5,
                height: MediaQuery.of(context).size.height*0.2,
              ),
          )
                ],
              ),
            ),
           
          ]
        ),
      )
      );
  }
}
