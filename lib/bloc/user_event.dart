import 'package:radio/models/radio_model.dart';

abstract class UserEvent {
  const UserEvent();}

  class AutomaticLoad extends UserEvent{}

  class StationSelect extends UserEvent{
  final RadioModel selectedStation;
  const StationSelect(this.selectedStation);
  }

  class StationChange extends UserEvent{
    final RadioModel selectedStation;
    const StationChange(this.selectedStation);
  }

  class AddedToFavourites extends UserEvent {}

  class RemovedFromFavourites extends UserEvent {}

  class Error extends UserEvent{}
