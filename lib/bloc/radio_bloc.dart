import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:radio/services/audio_handler.dart';
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

  RadioModel? selectedStation;
  RadioModel? currentStation;
  RadioModel? favouriteStation;
  List<RadioModel> stations = [];
  List<RadioModel>? favStations;
  List<RadioModel>? restoredStations;
  String? savedJsonString;
  String? savedListToString;

  final audioPlayer = AudioPlayer();

  saveData(String str) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    savedListToString = jsonEncode(stations);
    prefs.setString('key', savedListToString!);
    print('IN SAVE DATA $stations');
    print(str);
  }

  readData(String str) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    savedJsonString = prefs.getString('key');
    if(savedJsonString != null) {
      List<RadioModel> responseFromJson(String str) =>
          Set<RadioModel>.from(
              json.decode(str).map((x) => RadioModel.fromJson(x))).toList();
      restoredStations = responseFromJson(savedJsonString!);
      stations = restoredStations!;
      stations.sort((a, b) => a.name.compareTo(b.name));
    } else {
      stations = radiosRepository.getRadio();
      stations.sort((a, b) => a.name.compareTo(b.name));
    }

    print('List Stations at readData: $stations');
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

  RadioModel updateIsFavouriteFlag(RadioModel station, List<RadioModel> favouriteStations) {
    var favouriteStationsUris = favouriteStations.map((fs) => fs.uri);
    var isStationFavourite = favouriteStationsUris.contains(station.uri);
    if (isStationFavourite) {
      station.isFavourite = true;
    }
    return station;
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
      readData('from fetch');

      var _fetchedStations = radiosRepository.getRadio();
      _fetchedStations.sort((a, b) => a.name.compareTo(b.name));

      yield _createLoadedState();
    } on Exception catch (e) {
      yield ErrorState();
    }
  }

LoadedRadiosState _createLoadedState() {
    saveData('SAVED at _createLoadedState');
    return LoadedRadiosState(selectedStation: selectedStation, loadedRadios: stations, favouriteStation: favouriteStation);
}

Stream<RadioState> _playAndChange (StationSelect event) async* {
// saveData('saved at 15 40 from _playAndChange');
  if (selectedStation == event.selectedStation) {
    // MyAudioHandler().stop();
    stopAudio();
    yield _createLoadedState();
    // yield _createLoadedState();
    selectedStation = null;
    currentStation = null;
  }

  else if (selectedStation == null) {
    selectedStation = event.selectedStation;
    currentStation = selectedStation;
    // MyAudioHandler().startAudio(selectedStation!.uri);
    startAudio(selectedStation!.uri);
    yield _createLoadedState();
    print('playing: ${selectedStation!.uri}');
  }

  else if (selectedStation != event.selectedStation) {
    // MyAudioHandler().stop();
    stopAudio();
    currentStation = null;
    selectedStation = event.selectedStation;
    currentStation = selectedStation;
    // MyAudioHandler().startAudio(selectedStation!.uri);
    startAudio(selectedStation!.uri);
    yield _createLoadedState();
  }
}

  Stream<RadioState> _favourites (ActionsWithFavourites event) async* {

    var currentStationIndex = stations.indexWhere((station) => station.uri == event.station.uri);
    var isCurrentStationFavourite = stations[currentStationIndex].isFavourite;

    if (isCurrentStationFavourite == null) {
      stations[currentStationIndex].isFavourite = true;
    } else if (isCurrentStationFavourite == true) {
      stations[currentStationIndex].isFavourite = false;
    } else if (isCurrentStationFavourite == false) {
      stations[currentStationIndex].isFavourite = true;
    }

    yield _createLoadedState();
  }
}

