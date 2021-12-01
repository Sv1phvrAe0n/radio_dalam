import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/homepage/homepage.dart';
import '../pages/favourites/favourite.dart';

class TabBars extends StatefulWidget {

  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xff080D18),
                  flexibleSpace: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TabBar(
                        indicatorColor: Color(0xffE0E0E0),
                        tabs: [
                          Tab(icon: Icon(Icons.queue_music_sharp, color: Color(0xffE0E0E0))),
                          Tab(icon: Icon(Icons.star, color: Color(0xffE0E0E0))),
                        ],
                      )
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    HomePage(),
                    Favourite()
                  ],
                )
            )
        )
    );
  }

}
