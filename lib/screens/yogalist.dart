import 'package:flutter/material.dart';

class YogaPlaylist{
  String playlistname;
  List<YogaList> yogaList;
  Color start;
  Color end;
  String imageUrl;
  YogaPlaylist({this.playlistname, this.yogaList, this.start, this.end, this.imageUrl});
}


class YogaList{
  String title;
  String imageUrl;
  String videoUrl;
  String description;
  String benifit;
  String precaution;
  YogaList({this.title, this.imageUrl, this.videoUrl, this.description, this.benifit, this.precaution});
}