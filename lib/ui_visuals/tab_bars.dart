import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/homepage/homepage.dart';
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
                          Tab(icon: Icon(Icons.home_filled, color: Color(0xffE0E0E0))),
                          Tab(icon: Image.asset('lib/assets/images/heart_white.png', height: 23)),
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
