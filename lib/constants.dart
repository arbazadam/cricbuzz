import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final String baseUrl = 'https://dev132-cricket-live-scores-v1.p.rapidapi.com/';

const applicationKey = 'eab4103546mshb731d74c4f0ecb1p185214jsn8d334d99d9df';

const seriesNameStyle = TextStyle(color: Colors.black54, fontSize: 13);
const completedStatusStyle = TextStyle(color: Color(0xff90caf9));
final liveStatusStyle =
    (BuildContext context) => TextStyle(color: Theme.of(context).errorColor);
const upComingStatusStyle = TextStyle(color: Color(0xffEE7F3B));
const footerTextStyle = TextStyle(color: Colors.black87);

const headers = {
        "x-rapidapi-key": "eab4103546mshb731d74c4f0ecb1p185214jsn8d334d99d9df",
        "x-rapidapi-host": "dev132-cricket-live-scores-v1.p.rapidapi.com",
      };

enum MatchStatus { LIVE, COMPLETED, UPCOMING }

String getDateTime(String dt) {
  var newDt = DateFormat.MMMEd().format(DateTime.parse(dt));
  return newDt;
}

String getScores(String scores) {
  if (scores.contains('d') && scores.contains('&')) {
    final score = scores.split('&');
    var modifiedScore='';
    for (var singleScore in score) {
      if (singleScore.contains('d')) {
        final newScore = singleScore.split('-');
        modifiedScore = score[0].trim()+'&'+newScore[1].trim() + '-' + newScore[0].trim();
      }
    }
    return modifiedScore;
  }
  return scores;
}

String getUpperCaseString(String ourString)
{
  if(ourString!=null)
  {
    return ourString.toUpperCase();
  }
  return null;
}
final infoLeadingStyle=TextStyle(color: Colors.grey);
const infoSizedBox=SizedBox(height:5);