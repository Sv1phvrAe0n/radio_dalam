import 'package:radio/models/radio_model.dart';

abstract class UserEvent {
  const UserEvent();}

  class AutomaticLoad extends UserEvent{}

  class FavouritesLoad extends UserEvent{}


class StationSelect extends UserEvent{
  final RadioModel selectedStation;
  const StationSelect(this.selectedStation);
  }

  // class StationChange extends UserEvent{
  //   final RadioModel selectedStation;
  //   const StationChange(this.selectedStation);
  // }

  class ActionsWithFavourites extends UserEvent {
  final RadioModel station;
  const ActionsWithFavourites(this.station);
  }

  // class RemovedFromFavourites extends UserEvent {
  // final RadioModel removedStation;
  // const RemovedFromFavourites(this.removedStation);
  // }

  class Error extends UserEvent{}
