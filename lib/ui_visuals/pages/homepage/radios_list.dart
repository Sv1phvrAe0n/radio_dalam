import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/station_card.dart';
import 'package:radio/ui_visuals/search_bar.dart';
import 'package:radio/ui_visuals/text_styles.dart';



class RadiosList extends StatefulWidget  {

  @override
  _RadiosListState createState() => _RadiosListState();
}

class _RadiosListState extends State<RadiosList> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    // final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);

    return BlocBuilder<RadioBloc, RadioState> (
      builder: (context, state) {

        // radioBloc.saveData('saved at homepage'); //ни на что не влияло 1452

        if (state is WelcomeState) {
          return Standby();
        }

        if (state is LoadedRadiosState) {
          return Expanded(
            child: Column(
              children: [
                // SearchWidget(text: 'text', hintText: 'Search radio, genre or country'),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: state.loadedRadios.length,
                      // shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: StationCard(station: state.loadedRadios[index])
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
