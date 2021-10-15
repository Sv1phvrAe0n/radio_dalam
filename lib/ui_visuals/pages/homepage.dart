import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/services/radio_api.dart';
import 'package:radio/services/radios_repository.dart';
import 'package:radio/widgets/radios_list.dart';

class HomePage extends StatelessWidget {
  final radiosRepository = RadioApiProvider();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RadioBloc>(
        create: (context) => RadioBloc(radiosRepository)..add(AutomaticLoad()),
      child: SafeArea(
          child: Scaffold(
              backgroundColor: Color(0xff1D071B),
              body: Column(
                children: [
                  // buildSearch(),
                  RadiosList(),
                ],
              )
          )
      )
      );
  }
}
