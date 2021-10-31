import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'pages/homepage/homepage.dart';
import 'pages/now_playing.dart';
import 'pages/favourites/favourite.dart';

class TabBars extends StatefulWidget {

  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xff1D071B),
                  flexibleSpace: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TabBar(
                        indicatorColor: Color(0xfffaa307),
                        tabs: [
                          Tab(icon: Icon(Icons.home_outlined, color: Color(0xfffaa307))),
                          Tab(icon: Icon(Icons.music_note_outlined, color: Color(0xfffaa307))),
                          Tab(icon: Icon(Icons.favorite_border, color: Color(0xfffaa307))),
                        ],
                      )
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    HomePage(),
                    NowPlaying(),
                    Favourite()
                  ],
                )
            )
        )
    );
  }
}
