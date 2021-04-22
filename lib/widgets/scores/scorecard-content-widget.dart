import 'package:cricbuzz/models/match_model.dart';

import 'package:flutter/material.dart';

import 'match_scores_widget.dart';
import 'match_summary_widget.dart';
import 'title-text-widget.dart';

class ScorecardContent extends StatelessWidget {
  const ScorecardContent({
    Key key,
    @required this.matchModel,
  }) : super(key: key);

  final MatchModel matchModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 10, 40, 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TitleTextWidget(matchModel: matchModel),
        SizedBox(height: 8),
        MatchHomeScores(
          matchModel: matchModel,
        ),
        SizedBox(height: 15),
        MatchAwayScores(
          matchModel: matchModel,
        ),
        SizedBox(
          height: 12,
        ),
        MatchSummary(matchModel: matchModel),
      ]),
    );
  }
}
