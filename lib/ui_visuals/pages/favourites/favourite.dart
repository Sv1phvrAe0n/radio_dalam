import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/services/radio_api.dart';
import 'favourites_list.dart';


class Favourite extends StatefulWidget {
  // final radiosRepository = RadioApiProvider();

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff080D18),
            body: Column(
              children: [
                FavouritesList(),
              ],
            )
        )
    );
  }

  @override
  bool get wantKeepAlive => true;
}