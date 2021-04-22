import 'team_model.dart';
import 'series_model.dart';
import 'venue_model.dart';
import 'scores_model.dart';

class MatchModel {
  int id;
  int matchTypeId;
  Series series;
  String name;
  String status;
  Venue venue;
  Team homeTeam;
  Team awayTeam;
  String currentMatchState;
  bool isMultiDay;
  String matchSummaryText;
  Scores scores;
  List<Null> liveStreams;
  bool isLive;
  int winningTeamId;
  int currentInningId;
  bool isMatchDrawn;
  bool isMatchAbandoned;
  String startDateTime;
  String endDateTime;
  bool isWomensMatch;
  bool isGamedayEnabled;
  bool removeMatch;

  MatchModel(
      {this.id,
      this.winningTeamId,
      this.matchTypeId,
      this.series,
      this.name,
      this.status,
      this.venue,
      this.homeTeam,
      this.awayTeam,
      this.currentMatchState,
      this.isMultiDay,
      this.matchSummaryText,
      this.scores,
      this.liveStreams,
      this.isLive,
      this.currentInningId,
      this.isMatchDrawn,
      this.isMatchAbandoned,
      this.startDateTime,
      this.endDateTime,
      this.isWomensMatch,
      this.isGamedayEnabled,
      this.removeMatch});

  MatchModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    matchTypeId = json['matchTypeId'];
    series = json['series'] != null ? Series.fromJson(json['series']) : null;
    name = json['name'];
    status = json['status'];
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    homeTeam =
        json['homeTeam'] != null ? new Team.fromJson(json['homeTeam']) : null;
    awayTeam =
        json['awayTeam'] != null ? new Team.fromJson(json['awayTeam']) : null;
    currentMatchState = json['currentMatchState'];
    winningTeamId =
        json['winningTeamId'] != null ? json['winningTeamId'] : null;
    isMultiDay = json['isMultiDay'];
    matchSummaryText = json['matchSummaryText'];
    scores =
        json['scores'] != null ? new Scores.fromJson(json['scores']) : null;
    if (json['liveStreams'] != null) {
      liveStreams = new List<Null>();
      json['liveStreams'].forEach((v) {});
    }
    isLive = json['isLive'];
    currentInningId = json['currentInningId'];
    isMatchDrawn = json['isMatchDrawn'];
    isMatchAbandoned = json['isMatchAbandoned'];
    startDateTime = json['startDateTime'];
    endDateTime = json['endDateTime'];
    isWomensMatch = json['isWomensMatch'];
    isGamedayEnabled = json['isGamedayEnabled'];
    removeMatch = json['removeMatch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['matchTypeId'] = this.matchTypeId;
    if (this.series != null) {
      data['series'] = this.series.toJson();
    }
    data['name'] = this.name;
    data['status'] = this.status;
    if (this.venue != null) {
      data['venue'] = this.venue.toJson();
    }
    if (this.homeTeam != null) {
      data['homeTeam'] = this.homeTeam.toJson();
    }
    if (this.awayTeam != null) {
      data['awayTeam'] = this.awayTeam.toJson();
    }
    data['currentMatchState'] = this.currentMatchState;
    data['isMultiDay'] = this.isMultiDay;
    data['matchSummaryText'] = this.matchSummaryText;
    if (this.scores != null) {
      data['scores'] = this.scores.toJson();
    }
    if (this.liveStreams != null) {}
    data['isLive'] = this.isLive;
    data['currentInningId'] = this.currentInningId;
    data['isMatchDrawn'] = this.isMatchDrawn;
    data['isMatchAbandoned'] = this.isMatchAbandoned;
    data['startDateTime'] = this.startDateTime;
    data['endDateTime'] = this.endDateTime;
    data['isWomensMatch'] = this.isWomensMatch;
    data['isGamedayEnabled'] = this.isGamedayEnabled;
    data['removeMatch'] = this.removeMatch;
    return data;
  }
}

