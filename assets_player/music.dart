import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

music() {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer.logEnabled = true;

  pause() async {
    int result = await audioPlayer.pause();
  }

  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              height: 250,
              width: 300,
              child: Card(
                shadowColor: Colors.grey,
                elevation: 100,
                child: Image.asset("./assets/image.jpg"),
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton(
              elevation: 100,
              focusColor: Colors.deepPurple,
              hoverColor: Colors.deepPurple,
              onPressed: () {
                var audio = AudioCache();
                audio.play('music.mp3');
              },
              child: Icon(Icons.play_arrow),
              color: Colors.purple[300],
            ),
            RaisedButton(
              elevation: 100,
              focusColor: Colors.deepPurple,
              hoverColor: Colors.deepPurple,
              onPressed: () {
                var audio = AudioCache();
                audioPlayer.pause();
              },
              child: Icon(Icons.pause),
              color: Colors.purple[300],
            ),
          ]),
        ],
      ),
      appBar: AppBar(
        title: Text("Library"),
        backgroundColor: Colors.purple[200],
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
