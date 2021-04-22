import 'package:cricbuzz/screens/match_detail/match_info_screen.dart';
import 'package:cricbuzz/screens/no_internet_screen.dart';
import 'package:flutter/material.dart';

class CommentaryWidget extends StatefulWidget {
  @override
  _CommentaryWidgetState createState() => _CommentaryWidgetState();
}

class _CommentaryWidgetState extends State<CommentaryWidget> {
  var tabs = ['info', 'live', 'scorecard', 'overs', 'highlights'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: tabs.length,
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: TabBarView(children: [
            MatchInfoScreen(),
            NoInternetScreen(),
            NoInternetScreen(),
            NoInternetScreen(),
            NoInternetScreen(),
          ]),
          appBar: AppBar(
            bottom: TabBar(
                isScrollable: true,
                tabs: tabs
                    .map((e) => Tab(
                          text: e.toUpperCase(),
                        ))
                    .toList()),
          ),
        ));
  }
}
