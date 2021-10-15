import 'package:flutter/cupertino.dart';
import 'package:radio/models/radio_model.dart';

abstract class RadioState {
  const RadioState();
}

class WelcomeState extends RadioState{}

class LoadingDataState extends RadioState{
}

class LoadedRadiosState extends RadioState{
  final List<dynamic> loadedRadios;
  final RadioModel selectedStation;
  const LoadedRadiosState({@required this.loadedRadios, this.selectedStation});

}

// class PlayingRadioState extends RadioState {
//   final RadioModel selectedStation;
//   List<dynamic> loadedRadios;
//
//   PlayingRadioState({this.selectedStation, this.loadedRadios});
// }

class ErrorState extends RadioState{}