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
