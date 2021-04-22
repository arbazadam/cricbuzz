class Comments {
  int id;
  String ballType;
  String dateTime;
  String text;
  bool isFallOfWicket;
  int batsmanId;
  String batsmanName;
  String batsmanImageURL;
  int bowlerId;
  String bowlerName;
  String bowlerImageURL;
  String runs;
  int battingTeamScore;
  int offStrikeBatsmanId;
  int wickets;

  Comments(
      {this.id,
      this.ballType,
      this.dateTime,
      this.text,
      this.isFallOfWicket,
      this.batsmanId,
      this.batsmanName,
      this.batsmanImageURL,
      this.bowlerId,
      this.bowlerName,
      this.bowlerImageURL,
      this.runs,
      this.battingTeamScore,
      this.offStrikeBatsmanId,
      this.wickets});

  Comments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ballType = json['ballType'];
    dateTime = json['dateTime'];
    text = json['text'];
    isFallOfWicket = json['isFallOfWicket'];
    batsmanId = json['batsmanId'];
    batsmanName = json['batsmanName'];
    batsmanImageURL = json['batsmanImageURL'];
    bowlerId = json['bowlerId'];
    bowlerName = json['bowlerName'];
    bowlerImageURL = json['bowlerImageURL'];
    runs = json['runs'];
    battingTeamScore = json['battingTeamScore'];
    offStrikeBatsmanId = json['offStrikeBatsmanId'];
    wickets = json['wickets'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ballType'] = this.ballType;
    data['dateTime'] = this.dateTime;
    data['text'] = this.text;
    data['isFallOfWicket'] = this.isFallOfWicket;
    data['batsmanId'] = this.batsmanId;
    data['batsmanName'] = this.batsmanName;
    data['batsmanImageURL'] = this.batsmanImageURL;
    data['bowlerId'] = this.bowlerId;
    data['bowlerName'] = this.bowlerName;
    data['bowlerImageURL'] = this.bowlerImageURL;
    data['runs'] = this.runs;
    data['battingTeamScore'] = this.battingTeamScore;
    data['offStrikeBatsmanId'] = this.offStrikeBatsmanId;
    data['wickets'] = this.wickets;
    return data;
  }
}