class MatchModel {
  int id;
  int matchTypeId;
  Series series;
  String name;
  String status;
  Venue venue;
  HomeTeam homeTeam;
  HomeTeam awayTeam;
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
    series =
        json['series'] != null ? new Series.fromJson(json['series']) : null;
    name = json['name'];
    status = json['status'];
    venue = json['venue'] != null ? new Venue.fromJson(json['venue']) : null;
    homeTeam = json['homeTeam'] != null
        ? new HomeTeam.fromJson(json['homeTeam'])
        : null;
    awayTeam = json['awayTeam'] != null
        ? new HomeTeam.fromJson(json['awayTeam'])
        : null;
    currentMatchState = json['currentMatchState'];
    winningTeamId=json['winningTeamId']!=null?json['winningTeamId']:null;
    isMultiDay = json['isMultiDay'];
    matchSummaryText = json['matchSummaryText'];
    scores =
        json['scores'] != null ? new Scores.fromJson(json['scores']) : null;
    if (json['liveStreams'] != null) {
      liveStreams = new List<Null>();
      json['liveStreams'].forEach((v) {
        
      });
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
    if (this.liveStreams != null) {
     
    }
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

class Series {
  int id;
  String name;
  String shortName;

  Series({this.id, this.name, this.shortName});

  Series.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortName = json['shortName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    return data;
  }
}

class Venue {
  String name;
  String shortName;

  Venue({this.name, this.shortName});

  Venue.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    shortName = json['shortName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    return data;
  }
}

class HomeTeam {
  bool isBatting;
  int id;
  String name;
  String shortName;

  HomeTeam({this.isBatting, this.id, this.name, this.shortName});

  HomeTeam.fromJson(Map<String, dynamic> json) {
    isBatting = json['isBatting'];
    id = json['id'];
    name = json['name'];
    shortName = json['shortName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isBatting'] = this.isBatting;
    data['id'] = this.id;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    return data;
  }
}

class Scores {
  String homeScore;
  String homeOvers;
  String awayScore;
  String awayOvers;

  Scores({this.homeScore, this.homeOvers, this.awayScore, this.awayOvers});

  Scores.fromJson(Map<String, dynamic> json) {
    homeScore = json['homeScore'];
    homeOvers = json['homeOvers'];
    awayScore = json['awayScore'];
    awayOvers = json['awayOvers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['homeScore'] = this.homeScore;
    data['homeOvers'] = this.homeOvers;
    data['awayScore'] = this.awayScore;
    data['awayOvers'] = this.awayOvers;
    return data;
  }
  
}