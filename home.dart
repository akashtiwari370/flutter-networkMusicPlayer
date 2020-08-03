import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

home() {
  var url =
      "https://raw.githubusercontent.com/akashtiwari370/akash-industries/master/Jaan%20Ban%20Gaye%20-%20Khuda%20Haafiz%20(SongsMp3.Com).mp3";

  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer.logEnabled = true;

  pause() async {
    int result = await audioPlayer.pause();
  }

  play() async {
    int result = await audioPlayer.play(url);

    if (result == 1) {}
  }

  var src =
      "https://raw.githubusercontent.com/akashtiwari370/akash-industries/master/70532-Jaan%20Ban%20Gaye%20-%20Khuda%20Haafiz.jpg";

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
                child: Image.network(src),
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton(
              elevation: 100,
              focusColor: Colors.deepPurple,
              hoverColor: Colors.deepPurple,
              onPressed: play,
              child: Icon(Icons.play_arrow),
              color: Colors.purple[300],
            ),
            RaisedButton(
              elevation: 100,
              focusColor: Colors.deepPurple,
              hoverColor: Colors.deepPurple,
              onPressed: pause,
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
