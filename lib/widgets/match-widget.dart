import 'package:cricbuzz/models/match-model.dart';
import 'package:cricbuzz/screens/screens.dart';
import 'package:cricbuzz/widgets/match-widget-footer.dart';
import 'package:flutter/material.dart';

import 'scorecard-content-widget.dart';

class MatchDetailsWidget extends StatelessWidget {
  final MatchModel matchModel;
  MatchDetailsWidget({this.matchModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MyScreen.routeName, arguments: {
          'seriesid': matchModel.series.id,
          'matchid': matchModel.id
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ScorecardContent(matchModel: matchModel),
                matchModel.status == 'UPCOMING'
                    ? Positioned(
                        right: 8,
                        top: 7,
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.grey[600],
                        ))
                    : Container()
              ],
            ),
            SizedBox(
              height: 10,
            ),
            FooterContainer()
          ],
        ),
      ),
    );
  }
}
