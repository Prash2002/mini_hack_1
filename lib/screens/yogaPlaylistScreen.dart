import 'package:agile/screens/yogaYouTube.dart';
import 'package:agile/screens/yogalist.dart';
import 'package:agile/screens/yogasancard.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class YogaPlaylistScreen extends StatelessWidget {

  final YogaPlaylist yogaPlaylist;
  YogaPlaylistScreen({this.yogaPlaylist});

  
  @override
  Widget build(BuildContext context) {
    List<YogaList> yogaList= yogaPlaylist.yogaList ;
    return Scaffold(
      body: SafeArea(
              child: Stack(
                children:<Widget>[
              Container(height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [yogaPlaylist.start, yogaPlaylist.end],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
              ),

              ),
          child: PageView.builder(
            itemCount: yogaList.length,
              controller: PageController(viewportFraction: 0.8),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              itemBuilder: (context, position){
            YogaList playlist = yogaList.elementAt(position);
                return Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 100.0),
                  child: YogaCard(
                    yogaList: playlist,
                    yogaPlaylist: yogaPlaylist,
                    )
                );
              },
            ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 10.0),
               child: Align(
                 alignment: Alignment.bottomCenter,
                 child: Container(
                   padding: EdgeInsets.only(bottom:8,right:6),
                   height: 70,
                   width:70,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.black54,
                   ),
                   child: Center(
                     child: IconButton(
                       icon: Icon(Icons.play_arrow, size: 40,color: Colors.white,),
                       onPressed: ()=> Navigator.push(context, 
                       PageTransition(type: PageTransitionType.fade, child: YogaYoutubePlaylist(yogaPlaylist))),
                     )),
                 ),
               ),
             ),
                ],
              ),
      ),
    );
  }
}