import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/models/station_card.dart';
import 'package:radio/ui_visuals/text_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';


class FavouritesList extends StatefulWidget  {

  @override
  _FavouritesListState createState() => _FavouritesListState();
}

class _FavouritesListState extends State<FavouritesList> with AutomaticKeepAliveClientMixin {


  @override
  Widget build(BuildContext context) {
    final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);

    return BlocBuilder<RadioBloc, RadioState>(
        builder: (context, state) {

          print('favstations are: ${radioBloc.favStations}');
          // radioBloc.eraseData('erased at FavPage'); //Ни на что не повлияло
          // radioBloc.saveData('saved at FavPAge');

          if (radioBloc.favStations!.length > 0) {
            return Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: radioBloc.favStations!.length,
                  itemBuilder: (context, index) =>
                      Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: StationCard(station: radioBloc.favStations![index])
                      )),
            );
          }

          else {
            return Expanded(
              child: Center(child:
              Text('No added radios', style: RadioStation)
              ),
            );
          }

        }
    );

  }

  @override
  bool get wantKeepAlive => true;

}


class Standby extends StatelessWidget {

  final spinkit = SpinKitFoldingCube(
      color: Color(0xffADADAD),
      size: 35
  );
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(child: Center(child: spinkit)));
  }
}
