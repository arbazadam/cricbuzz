import 'package:cricbuzz/models/match-model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TitleTextWidget extends StatelessWidget {
  final MatchModel matchModel;
  TitleTextWidget({this.matchModel});
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(children: [
        if (matchModel.name != null && matchModel.name != '')
          TextSpan(
            text: '${matchModel.name}',
            style: seriesNameStyle,
          ),
        if (matchModel.name != null && matchModel.name != '')
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
              child: CircleAvatar(
                radius: 2.3,
                backgroundColor: Color.fromRGBO(114, 109, 106, .6),
              ),
            ),
          ),
        TextSpan(
          text: "${matchModel.series.name}",
          style: seriesNameStyle,
        ),
      ]),
    );
  }
}
