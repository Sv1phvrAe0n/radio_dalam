
import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/models/radio_model.dart';


// Future<AudioHandler> initAudioService() async {
//   return await AudioService.init(
//     builder: () => MyAudioHandler(),
//     config: AudioServiceConfig(
//       androidNotificationChannelId: 'com.ryanheise.myapp.channel.audio',
//       androidNotificationChannelName: 'Audio playback',
//       androidNotificationOngoing: true,
//       androidStopForegroundOnPause: true,
//       androidNotificationIcon: 'lib/assets/images/pyramid.png',
//     ),
//   );
// }
//
//
// class MyAudioHandler extends BaseAudioHandler {
//   late final RadioBloc radioBloc;
//
//   final audioPlayer = AudioPlayer();
//
//   Future startAudio(url) async {
//     await audioPlayer.play(url);
//   }
//
//   // stopAudio() {
//   //   audioPlayer.stop();
//   // }
//
//   @override
//   Future<void> stop() => audioPlayer.stop();
//
// }
