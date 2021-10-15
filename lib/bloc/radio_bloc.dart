import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/radio_model.dart';
import 'package:radio/services/radio_api.dart';

import 'package:radio/services/radios_repository.dart';
import 'package:radio/models/audioplayer.dart';

class RadioBloc extends Bloc<UserEvent, RadioState> {
  final RadioApiProvider radiosRepository;
  RadioBloc(this.radiosRepository) : super(WelcomeState());

  // final RadiosRepository radiosRepository;
  // RadioBloc(this.radiosRepository) : super(WelcomeState());



  final audioPlayer = AudioPlayer();
  RadioModel _selectedStation;
  RadioModel currentStation;
  List<RadioModel> _stations;

  Future startAudio(url) async {
    await audioPlayer.play(url);
  }

  stopAudio() {
    audioPlayer.stop();
  }



  @override
    Stream<RadioState> mapEventToState(UserEvent event) async* {
             if(event is AutomaticLoad) {yield* _fetchStations();}
        else if(event is StationSelect) {yield* _playAndChange(event); }
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
    return LoadedRadiosState(selectedStation: _selectedStation, loadedRadios: _stations);

}

Stream<RadioState> _playAndChange (StationSelect event) async* {
  // print('the _selectedStation BEFORE is: $_selectedStation');
  // print('event.selectedStation is: ${event.selectedStation}');

  if (_selectedStation == event.selectedStation) {
    // _selectedStation.shouldPlay = false;

    stopAudio();
    yield LoadedRadiosState(selectedStation: _selectedStation, loadedRadios: _stations);
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
    yield LoadedRadiosState(selectedStation: _selectedStation, loadedRadios: _stations);
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
    yield LoadedRadiosState(selectedStation: _selectedStation, loadedRadios: _stations);
    print('включилась станция $_selectedStation');
  }
  // print('the _selectedStation AFTER is: $_selectedStation');
  // yield _createLoadedState();
}

}



