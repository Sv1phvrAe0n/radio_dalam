import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/radio_model.dart';
import 'package:radio/services/radio_api.dart';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class RadioBloc extends Bloc<UserEvent, RadioState> {

  final RadioApiProvider radiosRepository;
  RadioBloc(this.radiosRepository) : super(WelcomeState()); //Welcome state заменить при конфликте с initialState


  final audioPlayer = AudioPlayer();
  RadioModel? _selectedStation;
  RadioModel? currentStation;
  RadioModel? favouriteStation;
  List<RadioModel> _stations = [];
  List<RadioModel>? favStations;
  List<RadioModel>? restoredStations;
  String? savedJsonString;
  String? savedListToString;


  saveData(String str) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
      if(favStations != null ) {
        savedListToString = jsonEncode(favStations);
        prefs.setString('key', savedListToString!);
      } else {
        print('no favourite stations to save');
      }
    print(str);
  }

  readData(String str) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // if(savedListToString != null) {
      savedJsonString = prefs.getString('key');
      List<RadioModel> responseFromJson(String str) => Set<RadioModel>.from(json.decode(str).map((x) => RadioModel.fromJson(x))).toList();
      restoredStations = responseFromJson(savedJsonString!);
    favStations = restoredStations;
      print('List favStations at readData: $favStations');
      print(str);
  }

  eraseData(String str) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove('key');
    print(str);
  }

  Future startAudio(url) async {
    await audioPlayer.play(url);
  }

  stopAudio() {
    audioPlayer.stop();
  }


  @override
    Stream<RadioState> mapEventToState(UserEvent event) async* {
        // print('эвент типа: $event');
             if(event is AutomaticLoad) {yield* _fetchStations();}
        else if(event is StationSelect) {yield* _playAndChange(event); }
        else if(event is ActionsWithFavourites) {yield* _favourites(event);}
        else yield ErrorState();
      }

  Stream<RadioState> _fetchStations() async* {
    try {
      _stations = radiosRepository.getRadio();
      _stations.sort((a, b) => a.name.compareTo(b.name));
      readData('from fetch');
      if(favStations == null) {favStations = [];}
      yield _createLoadedState();
    } on Exception catch (e) {
      yield ErrorState();
    }
  }

LoadedRadiosState _createLoadedState() {
    saveData('SAVED at _createLoadedState');
    return LoadedRadiosState(selectedStation: _selectedStation, loadedRadios: _stations, favourites: favStations, favouriteStation: favouriteStation);
}

Stream<RadioState> _playAndChange (StationSelect event) async* {
// saveData('saved at 15 40 from _playAndChange');
  if (_selectedStation == event.selectedStation) {
    stopAudio();
    yield _createLoadedState();
    _selectedStation = null;
    currentStation = null;
  }

  else if (_selectedStation == null) {
    _selectedStation = event.selectedStation;
    currentStation = _selectedStation;
    startAudio(_selectedStation!.uri);
    yield _createLoadedState();
  }

  else if (_selectedStation != event.selectedStation) {
    stopAudio();
    currentStation = null;
    _selectedStation = event.selectedStation;
    currentStation = _selectedStation;
    startAudio(_selectedStation!.uri);
    yield _createLoadedState();
  }
// saveData('saved at 15 40 from _playAndChange');
   // saveData('play nad change'); 15 40
}

  Stream<RadioState> _favourites (ActionsWithFavourites event) async* {
    // saveData('saved at 15 40 from _favourites');
    if(favStations!.contains(event.favouriteStation)) {
      favStations!.remove(event.favouriteStation);
      yield _createLoadedState();

    } else  {
      // if (favStations == null || favStations!.length > 0)

      if(favouriteStation == null) {
        favouriteStation = event.favouriteStation;
        favStations!.add(favouriteStation!);
        yield _createLoadedState();
      }

      else if(event.favouriteStation.isFavourite == false) {
        favStations!.remove(event.favouriteStation);
        yield _createLoadedState();
      }

      else if(event.favouriteStation.isFavourite == true) {
        favouriteStation = event.favouriteStation;
        favStations!.add(favouriteStation!);
        yield _createLoadedState();
      }
    }
    // saveData('saved at 15 40 from _favourites');
    // saveData('saved'); 1540
  }
}

// decode() {
//   fromJsonFavStations = jsonDecode(jsonFavStations);
//   print('here 2');
//
//   storedFavourites = fromJsonFavStations.map((item) => RadioModel.fromJson(item)).toList();
//   print('here 3');
//
//   return storedFavourites;
// }

// Map<String, dynamic> cacheMap = {};
// List storedFavourites = [];
// String jsonFavStations = '';
// var fromJsonFavStations;

// @override
// RadioState? fromJson(Map<String, dynamic>json) {
//   try {
//     storedFavourites = cacheMap.values.toList();
//     return FavouriteRadiosState(loadedRadios: _stations, selectedStation: _selectedStation, favourites: storedFavourites, favouriteStation: favouriteStation);
//   } catch (_) {
//     return null;
//   }
// }
//
//
// @override
// Map<String, dynamic>? toJson(RadioState state) {
//   if (state is FavouriteRadiosState) {
//     cacheMap = {'radiostations' : state.favourites};
//     return cacheMap;
//   } else {
//     return null;
//   }
// }
