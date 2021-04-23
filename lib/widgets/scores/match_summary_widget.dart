import 'package:flutter/material.dart';

import '../../constants.dart';

class MatchSummary extends StatelessWidget {
  const MatchSummary({
    Key key,
    @required this.status,
    @required this.matchSummaryText,
    @required this.dateTime,
  }) : super(key: key);

  final String status;
  final String matchSummaryText;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    return Text(
        status == 'COMPLETED'
            ? matchSummaryText
            : status == 'UPCOMING'
                ? getDateTime(dateTime)
                : matchSummaryText,
        overflow: TextOverflow.ellipsis,
        style: status == 'COMPLETED'
            ? completedStatusStyle
            : status == 'LIVE'
                ? liveStatusStyle(context)
                : upComingStatusStyle);
  }
}
