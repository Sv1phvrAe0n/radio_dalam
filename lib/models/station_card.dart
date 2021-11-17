import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/radio_model.dart';
import 'package:radio/ui_visuals/text_styles.dart';


class StationCard extends StatefulWidget {
  final RadioModel station;

  StationCard({required this.station});

  @override
  _StationCardState createState() => _StationCardState();
}

class _StationCardState extends State<StationCard> {

  @override
  Widget build(BuildContext context) {

    final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);

    return radioBloc.currentStation == widget.station ?
         ElevatedButton(
            onPressed: () {
              radioBloc.add(StationSelect(widget.station));
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xffE0E0E0)),
                  borderRadius: BorderRadius.circular(10.0))),
              backgroundColor: MaterialStateProperty.all(Color(0xff151B29)),
              padding: MaterialStateProperty.all(EdgeInsets.all(5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 1, 10, 1),
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xff080D18),
                            backgroundImage: NetworkImage(widget.station.imageUrl)),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.station.name, overflow: TextOverflow.ellipsis, style: RadioStation),
                              Text('${widget.station.genre} | ${widget.station.country}', overflow: TextOverflow.ellipsis,
                                  style: Genre_country)
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
                    MyBlinkingButton(),
                    IconButton(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      color: Color(0xffE0E0E0),
                      icon: (widget.station.isFavourite == null || widget.station.isFavourite == false) ?
                      Icon(Icons.star_border, color: Color(0xffADADAD), size: 35) : Icon(Icons.star, color: Color(0xffE0E0E0), size: 35),
                      onPressed: () {
                        radioBloc.add(ActionsWithFavourites(widget.station));
                      },
                    )
                  ],
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
                  // side: BorderSide(width: 1, color: Color(0xff7f5539)),
                  borderRadius: BorderRadius.circular(10.0))),
              backgroundColor: MaterialStateProperty.all(Color(0xff151B29)),
              padding: MaterialStateProperty.all(EdgeInsets.all(5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(1, 1, 10, 1),
                      child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff080D18),
                          backgroundImage: NetworkImage(widget.station.imageUrl)),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.station.name, overflow: TextOverflow.ellipsis, style: RadioStation),
                            Text('${widget.station.genre} | ${widget.station.country}', overflow: TextOverflow.ellipsis,
                                style: Genre_country
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  // color: Color(0xffE0E0E0),
                  icon:
                  (widget.station.isFavourite == null || widget.station.isFavourite == false) ?
                  Icon(Icons.star_border, color: Color(0xffADADAD), size: 35) : Icon(Icons.star, color: Color(0xffE0E0E0), size: 35),
                  onPressed: () {
                    radioBloc.add(ActionsWithFavourites(widget.station));
                    print(widget.station.isFavourite);
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
  late AnimationController _animationController;

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
          color: Color(0xffE0E0E0),
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
