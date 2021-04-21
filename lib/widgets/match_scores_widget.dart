import 'package:cricbuzz/models/match-model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MatchHomeScores extends StatelessWidget {
  const MatchHomeScores({
    Key key,
    @required this.matchModel,
  }) : super(key: key);

  final MatchModel matchModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(matchModel.homeTeam.name),
        if (matchModel.status == 'LIVE' || matchModel.status == 'COMPLETED')
          Text(
            matchModel.scores.homeScore,
            style: TextStyle(
                fontWeight:
                    matchModel.winningTeamId == matchModel.homeTeam.id
                        ? FontWeight.bold
                        : FontWeight.normal),
          ),
      ],
    );
  }
}

class MatchAwayScores extends StatelessWidget {
  const MatchAwayScores({
    Key key,
    @required this.matchModel,
  }) : super(key: key);

  final MatchModel matchModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(matchModel.awayTeam.name),
        if (matchModel.status == 'LIVE' || matchModel.status == 'COMPLETED')
          Text(
            matchModel.scores.awayScore,
            style: TextStyle(
                fontWeight:
                    matchModel.winningTeamId == matchModel.awayTeam.id
                        ? FontWeight.bold
                        : FontWeight.normal),
          ),
      ],
    );
  }
}

