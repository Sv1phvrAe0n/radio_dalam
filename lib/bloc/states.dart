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
  final List<dynamic> favourites;
  final RadioModel favouriteStation;
  const LoadedRadiosState({@required this.loadedRadios, this.selectedStation, this.favourites, this.favouriteStation});

}

class FavouriteRadiosState extends RadioState {
  final List<dynamic> loadedRadios;
  final RadioModel selectedStation;
  final List<dynamic> favourites;
  final RadioModel favouriteStation;
  const FavouriteRadiosState({@required this.loadedRadios, this.selectedStation, this.favourites, this.favouriteStation});
}

// class PlayingRadioState extends RadioState {
//   final RadioModel selectedStation;
//   List<dynamic> loadedRadios;
//
//   PlayingRadioState({this.selectedStation, this.loadedRadios});
// }

class ErrorState extends RadioState{}