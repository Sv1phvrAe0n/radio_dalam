import 'package:flutter/material.dart';
import 'package:radio/services/audio_handler.dart';
import 'package:radio/services/radio_api.dart';
import 'package:radio/ui_visuals/elements/tab_bars.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/radio_bloc.dart';
import 'bloc/user_event.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final radiosRepository = RadioApiProvider();
     return BlocProvider<RadioBloc>(
        create: (context) => RadioBloc(radiosRepository)..add(AutomaticLoad()),
        child: MaterialApp(
          title: 'Kvlt Radio',
          debugShowCheckedModeBanner: false,
          home: TabBars(),
        )
     );
  }
}
