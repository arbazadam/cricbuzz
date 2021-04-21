import 'dart:convert';

import 'package:cricbuzz/constants.dart';
import 'package:cricbuzz/models/match-model.dart';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

class CricketApi {
  static Future<List<MatchModel>> getData(
      {@required String endPoint, Map<String, Object> data}) async {
    try {
      String queryString = Uri(queryParameters: data).query;
      var requestUrl = baseUrl + '$endPoint?' + queryString;

      const headers = {
        "x-rapidapi-key": "eab4103546mshb731d74c4f0ecb1p185214jsn8d334d99d9df",
        "x-rapidapi-host": "dev132-cricket-live-scores-v1.p.rapidapi.com",
      };

      final response = await http.get(Uri.parse(requestUrl), headers: headers);
      final map = jsonDecode(response.body);
print('length of the map is ${map.length}');
      final list = map['matchList']['matches'] as List;
      List<MatchModel> matches = [];
      for (var match in list) {
        matches.add(MatchModel.fromJson(match));
      }
      print('The length is ${matches.length}');
      return matches;
    } catch (err) {
      return null;
    }
  }
}
