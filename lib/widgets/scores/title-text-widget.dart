import 'package:cricbuzz/models/match_model.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TitleTextWidget extends StatelessWidget {
  final String matchName;
  final String seriesName;
  TitleTextWidget({this.matchName,this.seriesName});
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(children: [
        if (matchName != null && matchName != '')
          TextSpan(
            text: '$matchName',
            style: seriesNameStyle,
          ),
        if (matchName != null && matchName != '')
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
          text: "$seriesName",
          style: seriesNameStyle,
        ),
      ]),
    );
  }
}
