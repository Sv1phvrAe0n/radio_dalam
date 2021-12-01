import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/states.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/services/radio_api.dart';
import 'package:radio/services/radios_repository.dart';
import 'package:radio/ui_visuals/pages/homepage/bottom_player.dart';
import 'package:radio/ui_visuals/pages/homepage/radios_list.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  final radiosRepository = RadioApiProvider();

  @override
  Widget build(BuildContext context) {

    RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);

    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff080D18),
            body: Column(
              children: [
                RadiosList(),
              ],
            ),
          bottomNavigationBar: BlocBuilder<RadioBloc, RadioState> (
              builder: (context, state) {
                if (radioBloc.currentStation != null) {
                  return BottomPlayer(radioBloc.currentStation!);
                } else {
                  return SizedBox(width: 0, height: 0);
                }
              }
          )
        )
    );
  }

  @override
  bool get wantKeepAlive => true;
}
