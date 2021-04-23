import 'package:cricbuzz/constants.dart';
import 'package:cricbuzz/models/match_model.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String labelText;
  final MatchModel model;
  InfoWidget({this.labelText, this.model});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 15.0, bottom: 10),
          child: Text(
            getUpperCaseString(labelText),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            _buildTile(labelText.contains('info')?'Match':'Stadium', labelText.contains('info')?'${model.name}':'${model.venue.name}'),
            _buildTile(labelText.contains('info')?'Series':'City', labelText.contains('info')?'${model.series.name}':'${model.venue.name}'),
            _buildTile(labelText.contains('info')?'Date':'Capacity', getDateTime(model.startDateTime)),
            _buildTile(labelText.contains('info')?'Time':'Ends', '06:00 PM, Your Time'),
            _buildTile(labelText.contains('info')?'Toss':'Hosts to', 'Royal Challengers Bangalore opt to bowl'),
            _buildTile('Venue', '${model.venue.name}'),
          ]),
        )
      ],
    );
  }
}

Widget _buildTile(String leading, String trailing) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: infoLeadingStyle,
        ),
        Text(trailing)
      ],
    ),
  );
}
