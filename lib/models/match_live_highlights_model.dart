// class MatchLiveAndHighlights {
//   Meta meta;
//   MatchDetail matchDetail;

//   MatchLiveAndHighlights({this.meta, this.matchDetail});

//   MatchLiveAndHighlights.fromJson(Map<String, dynamic> json) {
//     meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
//     matchDetail = json['matchDetail'] != null
//         ? new MatchDetail.fromJson(json['matchDetail'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.meta != null) {
//       data['meta'] = this.meta.toJson();
//     }
//     if (this.matchDetail != null) {
//       data['matchDetail'] = this.matchDetail.toJson();
//     }
//     return data;
//   }
// }

// class Meta {
//   bool hasFullScorecard;
//   bool hasCompleted;
//   bool hasCommentary;
//   bool hasGraph;
//   bool hasPlayerProfile;
//   bool hasWagonWheel;
//   int currentBattingTeam;
//   Series series;
//   String currentRunRate;
//   String matchName;
//   String matchType;
//   String venueName;
//   int currentInningsId;
//   int currentDay;

//   Meta(
//       {this.hasFullScorecard,
//       this.hasCompleted,
//       this.hasCommentary,
//       this.hasGraph,
//       this.hasPlayerProfile,
//       this.hasWagonWheel,
//       this.currentBattingTeam,
//       this.series,
//       this.currentRunRate,
//       this.matchName,
//       this.matchType,
//       this.venueName,
//       this.currentInningsId,
//       this.currentDay});

//   Meta.fromJson(Map<String, dynamic> json) {
//     hasFullScorecard = json['hasFullScorecard'];
//     hasCompleted = json['hasCompleted'];
//     hasCommentary = json['hasCommentary'];
//     hasGraph = json['hasGraph'];
//     hasPlayerProfile = json['hasPlayerProfile'];
//     hasWagonWheel = json['hasWagonWheel'];
//     currentBattingTeam = json['currentBattingTeam'];
//     series =
//         json['series'] != null ? new Series.fromJson(json['series']) : null;
//     currentRunRate = json['currentRunRate'];
//     matchName = json['matchName'];
//     matchType = json['matchType'];
//     venueName = json['venueName'];
//     currentInningsId = json['currentInningsId'];
//     currentDay = json['currentDay'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['hasFullScorecard'] = this.hasFullScorecard;
//     data['hasCompleted'] = this.hasCompleted;
//     data['hasCommentary'] = this.hasCommentary;
//     data['hasGraph'] = this.hasGraph;
//     data['hasPlayerProfile'] = this.hasPlayerProfile;
//     data['hasWagonWheel'] = this.hasWagonWheel;
//     data['currentBattingTeam'] = this.currentBattingTeam;
//     if (this.series != null) {
//       data['series'] = this.series.toJson();
//     }
//     data['currentRunRate'] = this.currentRunRate;
//     data['matchName'] = this.matchName;
//     data['matchType'] = this.matchType;
//     data['venueName'] = this.venueName;
//     data['currentInningsId'] = this.currentInningsId;
//     data['currentDay'] = this.currentDay;
//     return data;
//   }
// }

// class Series {
//   int id;
//   String name;

//   Series({this.id, this.name});

//   Series.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     return data;
//   }
// }

// class MatchDetail {
//   TeamBatting teamBatting;
//   TeamBatting teamBowling;
//   List<Null> overs;
//   Umpires umpires;
//   MatchSummary matchSummary;
//   String tossMessage;
//   List<Innings> innings;
//   List<CurrentBatters> currentBatters;
//   Bowler bowler;

//   MatchDetail(
//       {this.teamBatting,
//       this.teamBowling,
//       this.overs,
//       this.umpires,
//       this.matchSummary,
//       this.tossMessage,
//       this.innings,
//       this.currentBatters,
//       this.bowler});

//   MatchDetail.fromJson(Map<String, dynamic> json) {
//     teamBatting = json['teamBatting'] != null
//         ? new TeamBatting.fromJson(json['teamBatting'])
//         : null;
//     teamBowling = json['teamBowling'] != null
//         ? new TeamBatting.fromJson(json['teamBowling'])
//         : null;
//     if (json['overs'] != null) {
//       overs = new List<Null>();
//       json['overs'].forEach((v) {
//        // overs.add(new Null.fromJson(v));
//       });
//     }
//     umpires =
//         json['umpires'] != null ? new Umpires.fromJson(json['umpires']) : null;
//     matchSummary = json['matchSummary'] != null
//         ? new MatchSummary.fromJson(json['matchSummary'])
//         : null;
//     tossMessage = json['tossMessage'];
//     if (json['innings'] != null) {
//       innings = new List<Innings>();
//       json['innings'].forEach((v) {
//         innings.add(new Innings.fromJson(v));
//       });
//     }
//     if (json['currentBatters'] != null) {
//       currentBatters = new List<CurrentBatters>();
//       json['currentBatters'].forEach((v) {
//         currentBatters.add(new CurrentBatters.fromJson(v));
//       });
//     }
//     bowler =
//         json['bowler'] != null ? new Bowler.fromJson(json['bowler']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.teamBatting != null) {
//       data['teamBatting'] = this.teamBatting.toJson();
//     }
//     if (this.teamBowling != null) {
//       data['teamBowling'] = this.teamBowling.toJson();
//     }
//     if (this.overs != null) {
//      // data['overs'] = this.overs.map((v) => v.toJson()).toList();
//     }
//     if (this.umpires != null) {
//       data['umpires'] = this.umpires.toJson();
//     }
//     if (this.matchSummary != null) {
//       data['matchSummary'] = this.matchSummary.toJson();
//     }
//     data['tossMessage'] = this.tossMessage;
//     if (this.innings != null) {
//       data['innings'] = this.innings.map((v) => v.toJson()).toList();
//     }
//     if (this.currentBatters != null) {
//       data['currentBatters'] =
//           this.currentBatters.map((v) => v.toJson()).toList();
//     }
//     if (this.bowler != null) {
//       data['bowler'] = this.bowler.toJson();
//     }
//     return data;
//   }
// }

// class TeamBatting {
//   String score;
//   bool isBatting;
//   int id;
//   String name;
//   String shortName;
//   String logoUrl;

//   TeamBatting(
//       {this.score,
//       this.isBatting,
//       this.id,
//       this.name,
//       this.shortName,
//       this.logoUrl});

//   TeamBatting.fromJson(Map<String, dynamic> json) {
//     score = json['score'];
//     isBatting = json['isBatting'];
//     id = json['id'];
//     name = json['name'];
//     shortName = json['shortName'];
//     logoUrl = json['logoUrl'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['score'] = this.score;
//     data['isBatting'] = this.isBatting;
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['shortName'] = this.shortName;
//     data['logoUrl'] = this.logoUrl;
//     return data;
//   }
// }

// class Umpires {
//   FirstUmpire firstUmpire;
//   FirstUmpire secondUmpire;
//   FirstUmpire thirdUmpire;
//   FirstUmpire referee;

//   Umpires(
//       {this.firstUmpire, this.secondUmpire, this.thirdUmpire, this.referee});

//   Umpires.fromJson(Map<String, dynamic> json) {
//     firstUmpire = json['firstUmpire'] != null
//         ? new FirstUmpire.fromJson(json['firstUmpire'])
//         : null;
//     secondUmpire = json['secondUmpire'] != null
//         ? new FirstUmpire.fromJson(json['secondUmpire'])
//         : null;
//     thirdUmpire = json['thirdUmpire'] != null
//         ? new FirstUmpire.fromJson(json['thirdUmpire'])
//         : null;
//     referee = json['referee'] != null
//         ? new FirstUmpire.fromJson(json['referee'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.firstUmpire != null) {
//       data['firstUmpire'] = this.firstUmpire.toJson();
//     }
//     if (this.secondUmpire != null) {
//       data['secondUmpire'] = this.secondUmpire.toJson();
//     }
//     if (this.thirdUmpire != null) {
//       data['thirdUmpire'] = this.thirdUmpire.toJson();
//     }
//     if (this.referee != null) {
//       data['referee'] = this.referee.toJson();
//     }
//     return data;
//   }
// }

// class FirstUmpire {
//   String name;

//   FirstUmpire({this.name});

//   FirstUmpire.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     return data;
//   }
// }

// class MatchSummary {
//   int id;
//   int matchTypeId;
//   String statisticsProvider;
//   Series series;
//   String name;
//   String status;
//   Venue venue;
//   HomeTeam homeTeam;
//   HomeTeam awayTeam;
//   String currentMatchState;
//   bool isMultiDay;
//   String matchSummaryText;
//   Scores scores;
//   List<Null> liveStreams;
//   bool isLive;
//   int currentInningId;
//   bool isMatchDrawn;
//   bool isMatchAbandoned;
//   String startDateTime;
//   String endDateTime;
//   String localStartDate;
//   String localStartTime;
//   bool isWomensMatch;
//   String cmsMatchType;
//   String cmsMatchAssociatedType;
//   String cmsMatchVenueStartDateTime;
//   String cmsMatchVenueEndDateTime;
//   String cmsMatchStartDate;
//   String cmsMatchEndDate;
//   String gamedayStatus;
//   bool isGamedayEnabled;
//   bool removeMatch;

//   MatchSummary(
//       {this.id,
//       this.matchTypeId,
//       this.statisticsProvider,
//       this.series,
//       this.name,
//       this.status,
//       this.venue,
//       this.homeTeam,
//       this.awayTeam,
//       this.currentMatchState,
//       this.isMultiDay,
//       this.matchSummaryText,
//       this.scores,
//       this.liveStreams,
//       this.isLive,
//       this.currentInningId,
//       this.isMatchDrawn,
//       this.isMatchAbandoned,
//       this.startDateTime,
//       this.endDateTime,
//       this.localStartDate,
//       this.localStartTime,
//       this.isWomensMatch,
//       this.cmsMatchType,
//       this.cmsMatchAssociatedType,
//       this.cmsMatchVenueStartDateTime,
//       this.cmsMatchVenueEndDateTime,
//       this.cmsMatchStartDate,
//       this.cmsMatchEndDate,
//       this.gamedayStatus,
//       this.isGamedayEnabled,
//       this.removeMatch});

//   MatchSummary.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     matchTypeId = json['matchTypeId'];
//     statisticsProvider = json['statisticsProvider'];
//     series =
//         json['series'] != null ? new Series.fromJson(json['series']) : null;
//     name = json['name'];
//     status = json['status'];
//     venue = json['venue'] != null ? new Venue.fromJson(json['venue']) : null;
//     homeTeam = json['homeTeam'] != null
//         ? new HomeTeam.fromJson(json['homeTeam'])
//         : null;
//     awayTeam = json['awayTeam'] != null
//         ? new HomeTeam.fromJson(json['awayTeam'])
//         : null;
//     currentMatchState = json['currentMatchState'];
//     isMultiDay = json['isMultiDay'];
//     matchSummaryText = json['matchSummaryText'];
//     scores =
//         json['scores'] != null ? new Scores.fromJson(json['scores']) : null;
//     if (json['liveStreams'] != null) {
//       liveStreams = new List<Null>();
//       json['liveStreams'].forEach((v) {
//         //liveStreams.add(new Null.fromJson(v));
//       });
//     }
//     isLive = json['isLive'];
//     currentInningId = json['currentInningId'];
//     isMatchDrawn = json['isMatchDrawn'];
//     isMatchAbandoned = json['isMatchAbandoned'];
//     startDateTime = json['startDateTime'];
//     endDateTime = json['endDateTime'];
//     localStartDate = json['localStartDate'];
//     localStartTime = json['localStartTime'];
//     isWomensMatch = json['isWomensMatch'];
//     cmsMatchType = json['cmsMatchType'];
//     cmsMatchAssociatedType = json['cmsMatchAssociatedType'];
//     cmsMatchVenueStartDateTime = json['cmsMatchVenueStartDateTime'];
//     cmsMatchVenueEndDateTime = json['cmsMatchVenueEndDateTime'];
//     cmsMatchStartDate = json['cmsMatchStartDate'];
//     cmsMatchEndDate = json['cmsMatchEndDate'];
//     gamedayStatus = json['gamedayStatus'];
//     isGamedayEnabled = json['isGamedayEnabled'];
//     removeMatch = json['removeMatch'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['matchTypeId'] = this.matchTypeId;
//     data['statisticsProvider'] = this.statisticsProvider;
//     if (this.series != null) {
//       data['series'] = this.series.toJson();
//     }
//     data['name'] = this.name;
//     data['status'] = this.status;
//     if (this.venue != null) {
//       data['venue'] = this.venue.toJson();
//     }
//     if (this.homeTeam != null) {
//       data['homeTeam'] = this.homeTeam.toJson();
//     }
//     if (this.awayTeam != null) {
//       data['awayTeam'] = this.awayTeam.toJson();
//     }
//     data['currentMatchState'] = this.currentMatchState;
//     data['isMultiDay'] = this.isMultiDay;
//     data['matchSummaryText'] = this.matchSummaryText;
//     if (this.scores != null) {
//       data['scores'] = this.scores.toJson();
//     }
//     if (this.liveStreams != null) {
//       //data['liveStreams'] = this.liveStreams.map((v) => v.toJson()).toList();
//     }
//     data['isLive'] = this.isLive;
//     data['currentInningId'] = this.currentInningId;
//     data['isMatchDrawn'] = this.isMatchDrawn;
//     data['isMatchAbandoned'] = this.isMatchAbandoned;
//     data['startDateTime'] = this.startDateTime;
//     data['endDateTime'] = this.endDateTime;
//     data['localStartDate'] = this.localStartDate;
//     data['localStartTime'] = this.localStartTime;
//     data['isWomensMatch'] = this.isWomensMatch;
//     data['cmsMatchType'] = this.cmsMatchType;
//     data['cmsMatchAssociatedType'] = this.cmsMatchAssociatedType;
//     data['cmsMatchVenueStartDateTime'] = this.cmsMatchVenueStartDateTime;
//     data['cmsMatchVenueEndDateTime'] = this.cmsMatchVenueEndDateTime;
//     data['cmsMatchStartDate'] = this.cmsMatchStartDate;
//     data['cmsMatchEndDate'] = this.cmsMatchEndDate;
//     data['gamedayStatus'] = this.gamedayStatus;
//     data['isGamedayEnabled'] = this.isGamedayEnabled;
//     data['removeMatch'] = this.removeMatch;
//     return data;
//   }
// }

// class Series {
//   int id;
//   String name;
//   String shieldImageUrl;

//   Series({this.id, this.name, this.shieldImageUrl});

//   Series.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     shieldImageUrl = json['shieldImageUrl'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['shieldImageUrl'] = this.shieldImageUrl;
//     return data;
//   }
// }

// class Venue {
//   String name;
//   String location;
//   String latitude;
//   String longitude;
//   String antisocialPhoneNumber;

//   Venue(
//       {this.name,
//       this.location,
//       this.latitude,
//       this.longitude,
//       this.antisocialPhoneNumber});

//   Venue.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     location = json['location'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     antisocialPhoneNumber = json['antisocialPhoneNumber'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['location'] = this.location;
//     data['latitude'] = this.latitude;
//     data['longitude'] = this.longitude;
//     data['antisocialPhoneNumber'] = this.antisocialPhoneNumber;
//     return data;
//   }
// }

// class HomeTeam {
//   bool isBatting;
//   int id;
//   String name;
//   String shortName;
//   String logoUrl;
//   String teamColour;

//   HomeTeam(
//       {this.isBatting,
//       this.id,
//       this.name,
//       this.shortName,
//       this.logoUrl,
//       this.teamColour});

//   HomeTeam.fromJson(Map<String, dynamic> json) {
//     isBatting = json['isBatting'];
//     id = json['id'];
//     name = json['name'];
//     shortName = json['shortName'];
//     logoUrl = json['logoUrl'];
//     teamColour = json['teamColour'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['isBatting'] = this.isBatting;
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['shortName'] = this.shortName;
//     data['logoUrl'] = this.logoUrl;
//     data['teamColour'] = this.teamColour;
//     return data;
//   }
// }

// class Scores {
//   String homeScore;
//   String homeOvers;
//   String awayScore;
//   String awayOvers;

//   Scores({this.homeScore, this.homeOvers, this.awayScore, this.awayOvers});

//   Scores.fromJson(Map<String, dynamic> json) {
//     homeScore = json['homeScore'];
//     homeOvers = json['homeOvers'];
//     awayScore = json['awayScore'];
//     awayOvers = json['awayOvers'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['homeScore'] = this.homeScore;
//     data['homeOvers'] = this.homeOvers;
//     data['awayScore'] = this.awayScore;
//     data['awayOvers'] = this.awayOvers;
//     return data;
//   }
// }

// class Innings {
//   int id;
//   int teamId;
//   bool isDeclared;
//   String name;
//   String shortName;
//   String wickets;
//   String runs;
//   String score;
//   String overs;

//   Innings(
//       {this.id,
//       this.teamId,
//       this.isDeclared,
//       this.name,
//       this.shortName,
//       this.wickets,
//       this.runs,
//       this.score,
//       this.overs});

//   Innings.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     teamId = json['teamId'];
//     isDeclared = json['isDeclared'];
//     name = json['name'];
//     shortName = json['shortName'];
//     wickets = json['wickets'];
//     runs = json['runs'];
//     score = json['score'];
//     overs = json['overs'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['teamId'] = this.teamId;
//     data['isDeclared'] = this.isDeclared;
//     data['name'] = this.name;
//     data['shortName'] = this.shortName;
//     data['wickets'] = this.wickets;
//     data['runs'] = this.runs;
//     data['score'] = this.score;
//     data['overs'] = this.overs;
//     return data;
//   }
// }

// class CurrentBatters {
//   String name;
//   String runs;
//   String ballsFaced;
//   bool isFacing;
//   String strikeRate;
//   int id;

//   CurrentBatters(
//       {this.name,
//       this.runs,
//       this.ballsFaced,
//       this.isFacing,
//       this.strikeRate,
//       this.id});

//   CurrentBatters.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     runs = json['runs'];
//     ballsFaced = json['ballsFaced'];
//     isFacing = json['isFacing'];
//     strikeRate = json['strikeRate'];
//     id = json['id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['runs'] = this.runs;
//     data['ballsFaced'] = this.ballsFaced;
//     data['isFacing'] = this.isFacing;
//     data['strikeRate'] = this.strikeRate;
//     data['id'] = this.id;
//     return data;
//   }
// }

// class Bowler {
//   String name;
//   String wickets;
//   String runsAgainst;
//   String bowlerOver;
//   String economy;
//   String strikeRate;
//   int id;

//   Bowler(
//       {this.name,
//       this.wickets,
//       this.runsAgainst,
//       this.bowlerOver,
//       this.economy,
//       this.strikeRate,
//       this.id});

//   Bowler.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     wickets = json['wickets'];
//     runsAgainst = json['runsAgainst'];
//     bowlerOver = json['bowlerOver'];
//     economy = json['economy'];
//     strikeRate = json['strikeRate'];
//     id = json['id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['wickets'] = this.wickets;
//     data['runsAgainst'] = this.runsAgainst;
//     data['bowlerOver'] = this.bowlerOver;
//     data['economy'] = this.economy;
//     data['strikeRate'] = this.strikeRate;
//     data['id'] = this.id;
//     return data;
//   }
// }