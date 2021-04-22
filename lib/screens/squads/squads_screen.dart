import 'package:cricbuzz/constants.dart';
import 'package:flutter/material.dart';

import '../no_internet_screen.dart';

class SquadsScreen extends StatefulWidget {
  static final routeName = '/squads-screen';
  @override
  _SquadsScreenState createState() => _SquadsScreenState();
}

class _SquadsScreenState extends State<SquadsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Squads'),
            bottom: TabBar(
              
              tabs: [
              Container(
                width: MediaQuery.of(context).size.width*.5,
                child: Tab(
                  text: getUpperCaseString('royal challengers bangalore'),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*.5,
                child: Tab(
                  text: getUpperCaseString('rajasthan royals'),
                ),
              ),
            ]),
          ),
          body: TabBarView(children: [
            NoInternetScreen(),
            NoInternetScreen(),
          ]),
        ));
  }
}
