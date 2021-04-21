import 'package:cricbuzz/models/match-model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MatchSummary extends StatelessWidget {
  const MatchSummary({
    Key key,
    @required this.matchModel,
  }) : super(key: key);

  final MatchModel matchModel;

  @override
  Widget build(BuildContext context) {
    return Text(
        matchModel.status == 'COMPLETED'
            ? matchModel.matchSummaryText
            : matchModel.status == 'UPCOMING'
                ? getDateTime(matchModel.startDateTime)
                : matchModel.matchSummaryText,
        overflow: TextOverflow.ellipsis,
        style: matchModel.status == 'COMPLETED'
            ? completedStatusStyle
            : matchModel.status == 'LIVE'
                ? liveStatusStyle(context)
                : upComingStatusStyle);
  }
}
