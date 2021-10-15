import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/station_card.dart';
import 'package:radio/ui_visuals/text_styles.dart';
import 'all_state_widgets.dart';


class RadiosList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);

    return BlocBuilder<RadioBloc, RadioState> (
      builder: (context, state) {

        if (state is WelcomeState) {
          return Standby();
        }

        if (state is LoadedRadiosState) {
          return Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: state.loadedRadios.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: StationCard(station: state.loadedRadios[index])
                  // ButtonReadyToBePressed(state.loadedRadios[index].imageUrl,
                  //     state.loadedRadios[index].name,
                  //     state.loadedRadios[index].genre,
                  //     state.loadedRadios[index].uri)
                )),
          );
        }


     if(state is ErrorState) {
       throw Exception('something went wrong');
     }

     return CircularProgressIndicator();

      }
    );
  }
}
