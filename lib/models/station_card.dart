import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/radio_model.dart';
import 'package:radio/ui_visuals/text_styles.dart';



class StationCard extends StatefulWidget {
  final RadioModel station;

  StationCard({Key key, @required this.station})
      : super(key: key);

  @override
  _StationCardState createState() => _StationCardState();

}

class _StationCardState extends State<StationCard> {



  @override
  Widget build(BuildContext context) {
    final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);

    return
      radioBloc.currentStation == widget.station ?
         ElevatedButton(
            onPressed: () {
              radioBloc.add(StationSelect(widget.station));
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xfffaa307)),
                  borderRadius: BorderRadius.circular(10.0))),
              backgroundColor: MaterialStateProperty.all(Color(0xff370617)),
              padding: MaterialStateProperty.all(EdgeInsets.all(5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 1, 10, 1),
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff370617),
                      backgroundImage: NetworkImage(widget.station.imageUrl)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.station.name,
                        // overflow: TextOverflow.ellipsis,
                        style: RadioStation),
                    Text(widget.station.genre,
                        // overflow: TextOverflow.ellipsis,
                        style: Genre),
                  ],
                ),
                Expanded(child: Container()),
                MyBlinkingButton(),
                // Expanded(child: Container()),
                IconButton(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  iconSize: 35,
                  color: Color(0xfffaa307),
                  icon: (widget.station.isFavourite == null || widget.station.isFavourite == false) ?
                  Icon(Icons.favorite_border) : Icon(Icons.favorite),
                  onPressed: () {
                    radioBloc.add(ActionsWithFavourites(widget.station));
                    setState(() {
                      if(widget.station.isFavourite == null || widget.station.isFavourite == false) {
                        widget.station.isFavourite = true;
                        // radioBloc.favStations.add(widget.station);
                        print('${widget.station} added to ${radioBloc.favStations}');
                      } else {widget.station.isFavourite = false;
                      // radioBloc.favStations.remove(widget.station);
                      }
                    });
                  },
                ),
              ],
            ))
        :
      ElevatedButton(
            onPressed: () {
              radioBloc.add(StationSelect(widget.station));
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xff7f5539)),
                  borderRadius: BorderRadius.circular(10.0))),
              backgroundColor: MaterialStateProperty.all(Color(0xff1D071B)),
              padding: MaterialStateProperty.all(EdgeInsets.all(5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 1, 10, 1),
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff1D071B),
                      backgroundImage: NetworkImage(widget.station.imageUrl)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.station.name,
                        overflow: TextOverflow.ellipsis, style: RadioStation),
                    Text(widget.station.genre, overflow: TextOverflow.ellipsis, style: Genre),
                  ],
                ),
                Expanded(child: Container()),
                IconButton(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  iconSize: 35,
                  color: Color(0xfffaa307),
                  icon: (widget.station.isFavourite == null || widget.station.isFavourite == false) ?
                  Icon(Icons.favorite_border) : Icon(Icons.favorite),
                  onPressed: () {
                    radioBloc.add(ActionsWithFavourites(widget.station));
                    setState(() {
                      if(widget.station.isFavourite == null || widget.station.isFavourite == false) {
                        widget.station.isFavourite = true;
                        // radioBloc.favStations.add(widget.station);
                        print('${widget.station} added to ${radioBloc.favStations}');
                      } else {widget.station.isFavourite = false;
                      // radioBloc.favStations.remove(widget.station);
                      }
                    });
                  },
                ),
              ],
            ));
  }
}

class MyBlinkingButton extends StatefulWidget {
  @override
  _MyBlinkingButtonState createState() => _MyBlinkingButtonState();
}

class _MyBlinkingButtonState extends State<MyBlinkingButton>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Icon(
          Icons.play_circle_outline_outlined,
          size: 35,
          color: Color(0xfffaa307),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
