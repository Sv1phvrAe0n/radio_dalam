import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/models/radio_model.dart';
import 'package:radio/models/station_card.dart';
import 'package:radio/ui_visuals/search_bar.dart';

class RadiosList extends StatefulWidget  {

  @override
  _RadiosListState createState() => _RadiosListState();
}

class _RadiosListState extends State<RadiosList> with AutomaticKeepAliveClientMixin{

  String query = '';
  late List<RadioModel> stationsSorted;

  @override
  initState() {
    super.initState();
    final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);
    stationsSorted = radioBloc.stations;
  }

  @override
  Widget build(BuildContext context) {
    final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);

    return BlocBuilder<RadioBloc, RadioState> (
      builder: (context, state) {

        void searchRadio(String query) {
          final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);

          final stationsSorted = radioBloc.stations.where((station) {
            final nameLower = station.name.toLowerCase();
            final genreLower = station.genre.toLowerCase();
            final countryLower = station.country.toLowerCase();
            final searchLower = query.toLowerCase();

            return nameLower.contains(searchLower) ||
                genreLower.contains(searchLower) ||
                countryLower.contains(searchLower);
          }).toList();

          setState(() {
            this.query = query;
            this.stationsSorted = stationsSorted;
          });
        }

        Widget buildSearch() => SearchWidget(
            text: query,
            onChanged: searchRadio,
            hintText: 'Station name, genre or country');


        if (state is WelcomeState) {
          return Standby();
        }

        if (state is LoadedRadiosState) {

          return Expanded(
            child: Column(
              children: [
                buildSearch(),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: query.isEmpty ? radioBloc.stations.length : stationsSorted.length,
                      // shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: StationCard(station:
                        query.isEmpty ? radioBloc.stations[index] : stationsSorted[index])
                      )),
                ),
              ],
            ),
          );
        }

     if(state is ErrorState) {
       throw Exception('something went wrong');
     }

     return CircularProgressIndicator();

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
