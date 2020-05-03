import 'package:agile/screens/yogaPlaylistScreen.dart';
import 'package:agile/screens/yogacard.dart';
import 'package:agile/screens/yogalist.dart';
// import 'package:agile/screens/yogalist.dart';
import 'package:flutter/material.dart';

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();

}
class _WorkoutState extends State<Workout> {
    static List<YogaList> strength = [
    YogaList(title: 'Lunges', imageUrl: 'https://media3.giphy.com/media/l3q2Q3sUEkEyDvfPO/200.gif', description: 'A basic lunge works the muscles in your lower body, including your quadriceps, hamstrings, glutes, and calves.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=QOVaHwm-Q6U', ),
    YogaList(title: 'Squat to overhead raise', imageUrl: 'https://www.sparkpeople.com/assets/exercises/Dumbbell-Squat-with-Calf-Raise-and-Overhead-Press.gif', description: 'This exercise not only works your glutes and leg muscles, it also works the muscles in your core, back, and shoulders, as well as your triceps.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=7JtzNydMIJ8', ),
    YogaList(title: 'Planks', imageUrl: 'https://thumbs.gfycat.com/ShorttermPepperyDartfrog-small.gif', description: 'Planks are an excellent exercise for improving your core strength and stability. This exercise can also strengthen the muscles in your back, chest, and shoulders.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=pSHjTRCQxIw', ),
    YogaList(title: 'Pushups', imageUrl: 'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-small.gif', description: 'Standard pushups work the chest muscles (pectorals), as well as the shoulder muscles, triceps, and abdominals.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=rjc0O7OXS3g', ),
    YogaList(title: 'Resistance band pull apart', imageUrl: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/workouts/2016/12/bandpullapart-1480689234.gif', description: 'This exercise works the muscles in your back, shoulders, and arms.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=okRUV0bdXAU', ),

  ];
  static List<YogaList> balance = [
    YogaList(title: 'Sumo Squat With Outer Thigh Pulse', imageUrl: 'https://media.self.com/photos/59414a67a3fc292660cf29d4/master/w_800%2Cc_limit/Untitled-32.gif', description: 'This exercise strengthens your lower body and forces the core to engage while improving your balance', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=VJoOc8GqGec', ),
    YogaList(title: 'Standing Crunch With Under-the-Leg Clap', imageUrl: 'https://media.self.com/photos/59414a68c529bf431f608cb8/master/w_800%2Cc_limit/Untitled-33.gif', description: 'Balancing on one leg is challenging in itself. Add movement in the midst of a static hold with these claps and your core will be on fire', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=7mday-AmPXg', ),
    YogaList(title: 'Curtsy Lunge With Oblique Crunch', imageUrl: 'https://media.self.com/photos/59414a674490361423553a71/master/w_800%2Cc_limit/Untitled-34.gif', description: 'This total-body movement activates the glutes, engages the inner thigh, and strengthens your obliques', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=57ouEWXvxEQ', ),
    YogaList(title: 'Plank With Flying Plane Arms', imageUrl: 'https://media.self.com/photos/59414a6a81d6c44b47c65cbd/master/w_800%2Cc_limit/Untitled-36.gif', description: 'By lifting and mobilizing one of your extremities both your core strength and stability are challenged', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=S7e8XDPKkkc', ),
    YogaList(title: 'Rolling Forearm Side Plank', imageUrl: 'https://media.self.com/photos/59414a6b4e4e9b6122499a18/master/w_800%2Cc_limit/Untitled-37.gif', description: ' the movement of rolling from one side of your body to the other challenges your balance as your body moves between creating momentum and stabilizing in a static hold', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=PsSdFPhZ9to', ),

  ];
  static List<YogaList> flexible = [
    YogaList(title: 'Bird Dog', imageUrl: 'https://www.verywellfit.com/thmb/ya6xBBVMQtcGoLYFvOLdXV_mwpA=/700x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Verywell-05-2704746-Reach01-606copy-599d972d0d327a0011c6da1e.gif', description: 'Begin on hands and knees. Engage the abs and lift the right arm and left leg until level with the body, holding your balance and keeping torso tight.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=wiFNA3sqjCA', ),
    YogaList(title: 'Forearm Plank', imageUrl: 'https://www.verywellfit.com/thmb/4rFri2W3xEku1xw42MO2Xeh9RyE=/700x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Verywell-41-2328705-SideBridge01-2121copy-599d974a0d327a0011c6dcf4.gif', description: 'Lie on your side balanced on the forearm, feet, and hips stacked on top of one another.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=wCBOqf-HrTI', ),
    YogaList(title: 'Hip Stretch', imageUrl: 'https://www.verywellfit.com/thmb/Uevp0n-7CWypVYvIeM9re6Ta7LU=/700x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Verywell-05-3567192-Needle01copy-598b72d3af5d3a0011ceb996.gif', description: 'Cross left foot over right knee. Clasp hands behind right thigh and gently pull the leg in towards you, keeping upper body relaxed.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=7bRaX6M2nr8', ),
    YogaList(title: 'Pigeon Stretch', imageUrl: 'https://www.verywellfit.com/thmb/SJn8XUKkS92eilYO5VZc_IrXBsU=/700x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Verywell-07-3567179-Pigeon02-133-598b72f5b501e80012e733ab.gif', description: 'Begin on the hands and knees and bring the left knee in, resting it on the floor between your hands ', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=FVlX5HNKamw', ),
    YogaList(title: 'Spine Twist', imageUrl: 'https://www.verywellfit.com/thmb/EUjNKSDy71MY2M5WjPRInGEFg0A=/700x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Verywell-20-4023748-SpinalTwist01-1729-5afc773e119fa80037e0c999.gif', description: 'Lying on the floor, place right foot on the left knee. Using your left hand, gently pull your right knee towards the floor, twisting your spine and keeping ​your left arm straight out, hips and shoulders on the floor.', benifit: '', videoUrl: 'https://www.youtube.com/watch?v=XbQzj8rjBbw', ),
];
 
  List<YogaPlaylist> yogaPlaylist = [
    YogaPlaylist(playlistname: 'Strength', yogaList: strength, start: Color(0xFFCE93D8) , end: Color(0xFF9C27B0), imageUrl: 'https://image.flaticon.com/icons/svg/2548/2548537.svg'),
    YogaPlaylist(playlistname: 'Balance', yogaList: balance, start: Color(0xFFFFE082) , end: Color(0xFFFFC107),  imageUrl: 'https://image.flaticon.com/icons/svg/2548/2548536.svg'),
    YogaPlaylist(playlistname: 'Flexibility', yogaList: flexible, start: Color(0xFFC8E6C9) , end: Color(0xFF66BB6A),  imageUrl: 'https://image.flaticon.com/icons/svg/2548/2548521.svg'),
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
