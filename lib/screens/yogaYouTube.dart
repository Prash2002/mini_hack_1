import 'package:agile/screens/yogalist.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YogaYoutubePlaylist extends StatefulWidget {
  final YogaPlaylist yogaPlaylist;
  YogaYoutubePlaylist(this.yogaPlaylist);

  @override
  _YogaYoutubePlaylistState createState() => _YogaYoutubePlaylistState(this.yogaPlaylist);
}

class _YogaYoutubePlaylistState extends State<YogaYoutubePlaylist> {
  final YogaPlaylist yogaPlaylist;
  _YogaYoutubePlaylistState(this.yogaPlaylist);
 static List <String> yogaVideos;
  @override
  void initState() {
    yogaVideos = yogaPlaylist.yogaList.map((asana)=>YoutubePlayer.convertUrlToId(asana.videoUrl)).toList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final List<YoutubePlayerController> _controllers = 
      yogaVideos.map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
      )
      .toList();
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.black45,
        centerTitle: true,
        
        title: Text("Agile",
        style: TextStyle(color: Colors.white,fontFamily: "PermanentMarker", fontSize: 40 ),
        ),
        
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView.separated(
           scrollDirection: Axis.vertical,
            itemBuilder: (context, int index){
              
                      return YoutubePlayer(
            key: ObjectKey(_controllers[index]),
            controller: _controllers[index],
            actionsPadding: EdgeInsets.only(left: 16.0),
            bottomActions: [
              CurrentPosition(),
              SizedBox(width: 10.0),
              ProgressBar(isExpanded: true),
              SizedBox(width: 10.0),
              RemainingDuration(),
              FullScreenButton(),
            ],
          );
            },
             itemCount: _controllers.length,
        separatorBuilder: (context, _) => SizedBox(height: 25.0),
            ),
        )
        ),
      
    );
  }
}
  




