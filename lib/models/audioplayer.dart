import 'package:audioplayers/audioplayers.dart';

AudioPlayer audioPlayer = new AudioPlayer();

Future startAudio(url) async {
  await audioPlayer.play(url);
}

stopAudio() {
  audioPlayer.stop();
}