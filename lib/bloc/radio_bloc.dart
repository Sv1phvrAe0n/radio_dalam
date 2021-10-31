import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/radio_model.dart';
import 'package:radio/services/radio_api.dart';

import 'package:radio/services/radios_repository.dart';
import 'package:radio/models/audioplayer.dart';
import 'package:radio/ui_visuals/pages/favourites/favourite.dart';

class RadioBloc extends Bloc<UserEvent, RadioState> {
  final RadioApiProvider radiosRepository;
  RadioBloc(this.radiosRepository) : super(WelcomeState());


  final audioPlayer = AudioPlayer();
  RadioModel _selectedStation;
  RadioModel currentStation;
  RadioModel _favouriteStation;

  List<RadioModel> _stations;
  List<RadioModel> favStations = [];

  Future startAudio(url) async {
    await audioPlayer.play(url);
  }

  stopAudio() {
    audioPlayer.stop();
  }


  @override
    Stream<RadioState> mapEventToState(UserEvent event) async* {
        print('эвент типа: $event');
             if(event is AutomaticLoad) {yield* _fetchStations();}
        else if(event is StationSelect) {yield* _playAndChange(event); }
        else if(event is ActionsWithFavourites) {yield* _favourites(event);}
        else yield ErrorState();
      }

  Stream<RadioState> _fetchStations() async* {
    try {
      _stations = radiosRepository.getRadio();
      yield _createLoadedState();
    } on Exception catch (e) {
      yield ErrorState();
    }
  }

LoadedRadiosState _createLoadedState() {
    return LoadedRadiosState(selectedStation: _selectedStation, loadedRadios: _stations, favourites: favStations, favouriteStation: _favouriteStation);

}

Stream<RadioState> _playAndChange (StationSelect event) async* {
  // print('the _selectedStation BEFORE is: $_selectedStation');
  // print('event.selectedStation is: ${event.selectedStation}');

  if (_selectedStation == event.selectedStation) {
    // _selectedStation.shouldPlay = false;

    stopAudio();
    yield _createLoadedState();
    print('отключилась станция: $_selectedStation');
    _selectedStation = null;
    currentStation = null;
    // yield _createLoadedState();
  }

  else if (_selectedStation == null) {
    // _selectedStation.shouldPlay = true;
    _selectedStation = event.selectedStation;
    currentStation = _selectedStation;
    startAudio(_selectedStation.uri);
    yield _createLoadedState();
    print('впервые включилась станция: $_selectedStation');
  }

  else if (_selectedStation != event.selectedStation) {
    // _selectedStation.shouldPlay = false;
    stopAudio();
    currentStation = null;
    print('отключилась станция $_selectedStation');
    _selectedStation = event.selectedStation;
    currentStation = _selectedStation;
    startAudio(_selectedStation.uri);
    yield _createLoadedState();
    print('включилась станция $_selectedStation');
  }

  // if(favouriteStation.isFavourite = null) {
  //   favStations.add(event.favouriteStation);
  //   yield _createFavStations();
  // }

  // print('the _selectedStation AFTER is: $_selectedStation');
  // yield _createLoadedState();
}

  FavouriteRadiosState _createFavStations() {
    print('stations $favStations');
    return FavouriteRadiosState(selectedStation: _selectedStation, loadedRadios: _stations, favourites: favStations, favouriteStation: _favouriteStation);
  }

  Stream<RadioState> _favourites (ActionsWithFavourites event) async* {

    if(_favouriteStation == null) {
      _favouriteStation = event.favouriteStation;
      favStations.add(_favouriteStation);
      // yield _createFavStations();
      yield _createLoadedState();
      print('кейс нулл, станция $_favouriteStation добавлена в список $favStations');
    }

    else if(event.favouriteStation.isFavourite == false) {
      favStations.remove(event.favouriteStation);
      // yield _createFavStations();
      yield _createLoadedState();
      print('кейс фолс, станция ${event.favouriteStation} удалена из $favStations');
    }

    else if(event.favouriteStation.isFavourite == true) {
      _favouriteStation = event.favouriteStation;
      favStations.add(_favouriteStation);
      // yield _createFavStations();
      yield _createLoadedState();
      print('кейс тру, станция $_favouriteStation добавлена в список $favStations');
    }
  }

}



