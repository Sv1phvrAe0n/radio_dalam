import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/services/radio_api.dart';
import 'package:radio/services/radios_repository.dart';
import 'package:radio/ui_visuals/pages/homepage/radios_list.dart';


class HomePage extends StatelessWidget {
  final radiosRepository = RadioApiProvider();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff080D18),
            body: Column(
              children: [
                RadiosList(),
              ],
            )
        )
    );
  }
}
