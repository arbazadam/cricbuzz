import 'dart:convert';

import 'package:cricbuzz/constants.dart';
import 'package:cricbuzz/models/commentary_model.dart';
import 'package:cricbuzz/models/match_model.dart';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

class CricketApi{
  static Future<List<MatchModel>> getData(
      {@required String endPoint, Map<String, Object> data}) async {
    try {
      final map = await fetchResponse(endPoint: endPoint, data: data);
      final list = map['matchList']['matches'] as List;
      List<MatchModel> matches = [];
      for (var match in list) {
        matches.add(MatchModel.fromJson(match));
      }

      return matches;
    } catch (err) {
      return null;
    }
  }

  static Future<MatchModel> getMatchData(
      {@required String endPoint, Map<String, Object> data}) async {
    try {
      final responseBody = await fetchResponse(endPoint: endPoint, data: data);
      return MatchModel.fromJson(responseBody['match']);
    } catch (err) {
      print('reaching the catch block for some reason');
      return null;
    }
  }

  static Future<Comments> getCommentary(Map data, String endPoint) async {
    try {
      final responseData = await fetchResponse(endPoint: endPoint, data: data);

      return Comments.fromJson(responseData['commentary']['innings'][0]['overs']
          [0]['balls'][0]['comments'][1]);
    } catch (error) {
      print(error.toString());
      print('some exception');
      return null;
    }
  }

  static Future<Map> fetchResponse(
      {@required String endPoint, Map<String, String> data}) async {
    String queryString = Uri(queryParameters: data).query;
    var requestUrl = baseUrl + '$endPoint?' + queryString;

    final response = await http.get(Uri.parse(requestUrl), headers: headers);
    final responseData = jsonDecode(response.body);
    return responseData;
  }
}
