import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/services/radio_api.dart';
import 'package:radio/ui_visuals/tab_bars.dart';

import 'bloc/radio_bloc.dart';
import 'bloc/user_event.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final radiosRepository = RadioApiProvider();
     return BlocProvider<RadioBloc>(
        create: (context) => RadioBloc(radiosRepository)..add(AutomaticLoad()),
        child: MaterialApp(
          title: 'Radio dalam',
          debugShowCheckedModeBanner: false,
          home: TabBars(),
        )
     );
  }
}

