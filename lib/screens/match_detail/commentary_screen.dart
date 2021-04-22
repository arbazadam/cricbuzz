import 'package:cricbuzz/apis/cricket-api.dart';

import 'package:cricbuzz/widgets/commentary/commentary_widget.dart';
import 'package:flutter/material.dart';

import '../no_internet_screen.dart';
import 'match_info_screen.dart';

class CommentaryScreen extends StatefulWidget {
  static final routeName = '/commentary-screen';

  @override
  _CommentaryScreenState createState() => _CommentaryScreenState();
}

class _CommentaryScreenState extends State<CommentaryScreen> {
  var isInit = true;
  var futureData;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (isInit) {
      final val =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      futureData = CricketApi.getCommentary(val, 'comments.php');
    }
    isInit = false;
  }

  @override
  Widget build(BuildContext context) {
    var tabs = ['info', 'live', 'scorecard', 'overs', 'highlights'];

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
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
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
