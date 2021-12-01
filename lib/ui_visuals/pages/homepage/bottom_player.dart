
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/radio_model.dart';
import 'package:radio/ui_visuals/pages/homepage/radios_list.dart';

import '../../text_styles.dart';

// ignore: must_be_immutable
class BottomPlayer extends StatefulWidget {
  RadioModel station;

  BottomPlayer(this.station);

  @override
  _BottomPlayerState createState() => _BottomPlayerState();
}

class _BottomPlayerState extends State<BottomPlayer> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {

    final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);
    radioBloc.currentStation = widget.station;

    void previousStation() {
        int currentIndex = radioBloc.stations.indexOf(widget.station);
        var previousStation = radioBloc.stations[currentIndex - 1];
        widget.station = previousStation;
    }

    void nextStation() {
      int currentIndex = radioBloc.stations.indexOf(widget.station);
      var previousStation = radioBloc.stations[currentIndex + 1];
      widget.station = previousStation;
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Container(
        padding: EdgeInsets.all(5),
        color: Color(0xffADADAD),
        width: double.infinity,
        height: 65,
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.station.name, overflow: TextOverflow.ellipsis, style: RadioStationPlayer),
                            Text('${widget.station.genre} | ${widget.station.country}', overflow: TextOverflow.ellipsis,
                                style: Genre_countryPlayer)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    alignment: Alignment.center,
                    icon: Icon(Icons.skip_previous, color: Color(0xff080D18), size: 35),
                    onPressed: () {
                      previousStation();
                      radioBloc.add(StationSelect(widget.station));
                    },
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    icon: Icon(Icons.stop_circle_outlined, color: Color(0xff080D18), size: 35),
                    onPressed: () {
                      radioBloc.add(StationSelect(widget.station));
                    },
                  ),
                  IconButton(
                    alignment: Alignment.center,
                    icon: Icon(Icons.skip_next, color: Color(0xff080D18), size: 35),
                    onPressed: () {
                      nextStation();
                      radioBloc.add(StationSelect(widget.station));
                    },
                  ),

                  IconButton(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    icon:
                    (widget.station.isFavourite == null || widget.station.isFavourite == false) ?
                    Icon(Icons.star_border, color: Color(0xff080D18), size: 35) : Icon(Icons.star, color: Color(0xff080D18), size: 35),
                    onPressed: () {
                      radioBloc.add(ActionsWithFavourites(widget.station));
                    },
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
