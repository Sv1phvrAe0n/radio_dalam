import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/services/radio_api.dart';
import 'favourites_list.dart';


class Favourite extends StatelessWidget {
  final radiosRepository = RadioApiProvider();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff1D071B),
            body: Column(
              children: [
                FavouritesList(),
              ],
            )
        )
    );
  }
}