import 'package:agile/screens/yogaPlaylistScreen.dart';
import 'package:agile/screens/yogacard.dart';
import 'package:agile/screens/yogalist.dart';
import 'package:flutter/material.dart';


class Yoga extends StatefulWidget {
  @override
  _YogaState createState() => _YogaState();

}
class _YogaState extends State<Yoga> {
  static List<YogaList> beginner = [
    YogaList(title: 'Tadasana', imageUrl: 'https://image.flaticon.com/icons/svg/2789/2789807.svg' , description: 'Tadasana is the basic posture that carries a pool of information about where our mind and body are at the moment', benifit: 'Tadasana reveals the uniqueness of each and every body', videoUrl: 'https://www.youtube.com/watch?v=9eNMoDT2I-k'),
    YogaList(title: 'Adho Mukha Svanasana', imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647564.svg',description: ' It decompresses the spine, all the way up through the neck, letting the head hang heavy', benifit: 'This helps release pressure from the shoulder girdle, which allows you to focus on maximizing the length in your spine', videoUrl: 'https://www.youtube.com/watch?v=lZL7oh2lOgE&t=29s'),
    YogaList(title: 'Bhujangasana', imageUrl: 'https://image.flaticon.com/icons/svg/2789/2789949.svg', description: 'Cobra is the antidote to a slumped posture', benifit: 'All backbends broaden the collarbones and lift the sternum, opening up space for better breathing and even digestion', videoUrl: 'https://www.youtube.com/watch?v=fOdrW7nf9gw'),
    YogaList(title: 'Utthita Trikonasana', imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647593.svg', benifit: 'This pose strengthens the legs, obliques, core, and back while stretching the hamstrings and calves as well as the groin muscles and chest', description: 'Triangle is a great posture with a lot of benefits while being accessible for most people regardless of yoga experience', videoUrl: 'https://www.youtube.com/watch?v=9iaEp4RHYEE&t=9s'),
    YogaList(title: 'Utthita Ashwa Sanchalanasana', imageUrl: 'https://image.flaticon.com/icons/svg/2789/2789865.svg', description: 'Crescent Lunge uses and integrates muscles of the entire body (legs, core, arms), lengthening and strengthening the upper and lower body',benifit: 'Crescent Lunge lengthens and tones the arms, legs, hip flexors, foot, and toes; and strengthens the legs, hips, and butt. Crescent Lunge is a strong and powerful pose for the mind and body.', videoUrl: 'https://www.youtube.com/watch?v=_bjlqEKTY-8&t=9s'),

  ];
  static List<YogaList> backPain = [
    YogaList(title: 'Bitilasana', videoUrl:'https://www.youtube.com/watch?v=W5KVx0ZbB_4', imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647564.svg',description: 'This gentle, accessible backbend stretches and mobilizes the spine.', benifit:'Practicing this pose stretches your torso, shoulders, and neck.'),
    YogaList(title: 'Salabhasana', videoUrl:'https://www.youtube.com/watch?v=IFKJasb2taE', imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647622.svg', description: 'This gentle backbend may help relieve lower back pain and fatigue.', benifit: ' It strengthens the back torso, arms, and legs'),
    YogaList(title: 'Setu Bandha Sarvagasana', videoUrl:'https://www.youtube.com/watch?v=g78vfuC4QBI', imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647499.svg', description: 'This is a backbend and inversion that can be stimulating or restorative. ', benifit: 'It stretches the spine and it may relieve backaches and headaches'),
    // YogaList(title: 'Ardha Matsyendrasana',  imageUrl: '', description: 'This twisting pose energizes your spine and helps to relieve backache', benifit: 'It stretches your hips, shoulders, and neck. This pose can help alleviate'),
    YogaList(title: 'Utthita Trikonasana', imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647593.svg', benifit: 'This pose strengthens the legs, obliques, core, and back while stretching the hamstrings and calves as well as the groin muscles and chest', description: 'Triangle is a great posture with a lot of benefits while being accessible for most people regardless of yoga experience', videoUrl: 'https://www.youtube.com/watch?v=9iaEp4RHYEE&t=9s'),
    YogaList(title: 'Balasana', videoUrl:'https://www.youtube.com/watch?v=33L6oog4sbY' , imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647582.svg', description: 'This gentle forward fold is the perfect way to relax and release tension in your neck and back', benifit: 'This stretches your hips, thighs, and ankles. Practicing this pose can help relieve stress and fatigue.'),
  ];
  static List<YogaList> pranayama = [
    YogaList(imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647577.svg',title: 'Ujjayi', videoUrl: 'https://www.youtube.com/watch?v=ZwEdfOuhoY4', description: 'Ujjayi creates heat in the body and it also creates stability.', benifit: 'Ujjayi breath during asana practice can be a reminder and an indicator not to rush through poses and not to sacrifice the breath for the sake of getting into an idealised shape of the pose.'),
    YogaList(imageUrl: 'https://image.flaticon.com/icons/svg/2789/2789860.svg',title: 'Nadi Shodhana', videoUrl: 'https://www.youtube.com/watch?v=RUFzLVf5wL4',description: 'Nadi S​h​odhana or Alternate nostril breathing is the most important breathing technique to help keep the mind calm, happy and peaceful.', benifit: 'It balances the breath through both nostrils – we usually have one which is more blocked and this will change through the day. Nadi Shodhana also balances the two hemispheres of the brain.'),
    YogaList(imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647625.svg',title: 'Kapalabhati', videoUrl:'https://www.youtube.com/watch?v=3T47CqbdunY', description: 'The emphasis is on the exhalation through strong, fast abdominal contractions and so has a cleansing effect on the breathing pathways', benifit: 'Kapalabhati also creates heat and increases and stimulates the digestive fire (agni) by strengthening, massaging and toning the abdominal muscles and digestive organs. '),
    YogaList(imageUrl: 'https://image.flaticon.com/icons/svg/2789/2789976.svg',title: 'Agni Sara', videoUrl:'https://www.youtube.com/watch?v=wVYWF9L8eww',description: 'In Agni Sara or Fire Breath, the focus is on expelling the outbreath ', benifit: 'It has many of the same benefits for the abdominal organs and muscles but is often taught using one nostril at a time and at a slower pace.'),
    YogaList(imageUrl: 'https://image.flaticon.com/icons/svg/186/186938.svg',title: 'Bhastrika', videoUrl:'https://www.youtube.com/watch?v=upxeE2BTktc', description: 'Bhastrika is also known as Bellows Breath. It focuses on the inhalation just as much as the exhalation.', benifit: 'It produces heat, detoxifying and energizing the body. It tones the abdominal muscles and the digestive system.'),
  ];
  List<YogaPlaylist> yogaPlaylist = [
    YogaPlaylist(playlistname: 'Obesity', yogaList: beginner, start: Color(0xFFFFF59D) , end: Color(0xFFFFEB3B), imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647625.svg'),
    YogaPlaylist(playlistname: 'Back Pain', yogaList: backPain, start: Color(0xFFEF9A9A) , end: Color(0xFFF44336),  imageUrl: 'https://image.flaticon.com/icons/svg/2647/2647564.svg'),
    YogaPlaylist(playlistname: 'Pranayama', yogaList: pranayama, start: Color(0xFFC8E6C9) , end: Color(0xFF66BB6A),  imageUrl: 'https://image.flaticon.com/icons/svg/2789/2789860.svg'),
  ];
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SafeArea(
              child: Container(height: 600.0,
          child: PageView.builder(
            itemCount: yogaPlaylist.length,
              controller: PageController(viewportFraction: 0.8),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              itemBuilder: (context, position){
            YogaPlaylist playlist = yogaPlaylist.elementAt(position);
                return Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => YogaPlaylistScreen(
                        yogaPlaylist: playlist,
                      ))),
                      child: YogaPlaylistCard(
                      yogaPlaylist: playlist,
                      cardNum: position,
                    ),
                  )
                );
              },
              
            ),
        ),
      )
        );
  }

  
}         