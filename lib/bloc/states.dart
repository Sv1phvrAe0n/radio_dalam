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
  final RadioModel? selectedStation;
  final RadioModel? favouriteStation;
  const LoadedRadiosState({required this.loadedRadios, required this.selectedStation, required this.favouriteStation});

}

class FavouriteRadiosState extends RadioState {
  final List<dynamic> loadedRadios;
  final RadioModel? selectedStation;
  final RadioModel? favouriteStation;
  const FavouriteRadiosState({required this.loadedRadios, required this.selectedStation, required this.favouriteStation});
}


class ErrorState extends RadioState{}