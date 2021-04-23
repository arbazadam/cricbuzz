import 'package:cricbuzz/apis/cricket-api.dart';
import 'package:cricbuzz/models/match_model.dart';
import 'package:cricbuzz/widgets/match_info/info_widget.dart';
import 'package:cricbuzz/widgets/match_info/squads_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MatchInfoScreen extends StatefulWidget {
  final rcvdData;
  MatchInfoScreen({this.rcvdData});
  @override
  _MatchInfoScreenState createState() => _MatchInfoScreenState();
}

class _MatchInfoScreenState extends State<MatchInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CricketApi>(context, listen: false)
        .getMatchData(endPoint: 'match.php', data: widget.rcvdData);
    return Scaffold(
      body: FutureBuilder<MatchModel>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData &&
                snapshot.connectionState == ConnectionState.done)
              return ListView(children: [
                SquadsInfoWidget(
                  homeTeam: snapshot.data.homeTeam,
                  awayTeam: snapshot.data.awayTeam,
                ),
                InfoWidget(
                  labelText: 'info',
                  model: snapshot.data,
                ),
                InfoWidget(
                  labelText: 'venue guide',
                  model: snapshot.data,
                )
              ]);
            return Center(child: CircularProgressIndicator());
          }),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
