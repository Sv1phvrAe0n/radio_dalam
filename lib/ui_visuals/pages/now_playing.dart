import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class NowPlaying extends StatefulWidget {


  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  final audioPlayer = AudioPlayer();

  setData(url) {
    audioPlayer.setUrl(url);
  }

  Future startAudio(url) async {
    await audioPlayer.play(url);
  }

  stopAudio() {
    audioPlayer.stop();
  }
  //
  // String seturl = 'https://stream.radiojar.com/4ywdgup3bnzuv';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Row(
              children: [
                Container(
                  color: Colors.green,
                  child: OutlinedButton (
                    onPressed: () =>
                        startAudio('https://n13.radiojar.com/7csmg90fuqruv?rj-ttl=5&rj-tok=AAABfH48b3QA6JpPQEjUUtOOew'),
                    child: Text('Play'),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.red,
                  child: TextButton (
                    onPressed: () => stopAudio(),
                    child: Text('Stop'),
                  ),
                )
              ],
            )
        )
    );
  }
}
