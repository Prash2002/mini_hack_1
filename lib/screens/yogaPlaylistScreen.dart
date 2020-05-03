import 'package:agile/screens/yogalist.dart';
import 'package:agile/screens/yogasancard.dart';
import 'package:flutter/material.dart';

class YogaPlaylistScreen extends StatelessWidget {

  final YogaPlaylist yogaPlaylist;
  YogaPlaylistScreen({this.yogaPlaylist});
  @override
  Widget build(BuildContext context) {
    List<YogaList> yogaList= yogaPlaylist.yogaList ;
    return Scaffold(
      body: SafeArea(
              child: Container(height: MediaQuery.of(context).size.height,
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
      ),
    );
  }
}