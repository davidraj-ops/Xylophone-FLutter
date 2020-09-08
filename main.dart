import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';




void main() {
 runApp(MaterialApp(
   home: Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
       backgroundColor: Colors.black,
       title: Text(
         'Xylophone'
       ),
     ),
     body: XylophoneApp(),
   ),
 )
 );
}


class XylophoneApp extends StatelessWidget {

  void playSound (int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }


   Expanded createKey ({Color color, int soundNumber}) {
      return Expanded(
       child: FlatButton(
         onPressed: (){
           playSound(soundNumber);
         },
         color: color,
       ),
     );
   }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
            createKey(color: Colors.red, soundNumber: 1),
            createKey(color: Colors.blueAccent, soundNumber: 2),
            createKey(color: Colors.yellow, soundNumber: 3),
            createKey(color: Colors.white, soundNumber: 4),
            createKey(color: Colors.teal, soundNumber: 5),
            createKey(color: Colors.purple, soundNumber: 6),
            createKey(color: Colors.green, soundNumber: 7),

      ],
    );
  }
}
