import 'package:cricbuzz/widgets/match_info/squads_widget.dart';
import 'package:flutter/material.dart';

class MatchInfoScreen extends StatefulWidget {
  @override
  _MatchInfoScreenState createState() => _MatchInfoScreenState();
}

class _MatchInfoScreenState extends State<MatchInfoScreen> {
  final teams = ['Kolkata Knight Riders', 'Chennai Super Kings'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SquadsInfoWidget(
            teams: ['Kolkata Knight Riders', 'Chennai Super Kings'])
      ]),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
