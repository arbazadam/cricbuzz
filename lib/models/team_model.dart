class Team {
  bool isBatting;
  int id;
  String name;
  String shortName;
  String logoUrl;

  Team({this.isBatting, this.id, this.name, this.shortName,this.logoUrl});

  Team.fromJson(Map<String, dynamic> json) {
    isBatting = json['isBatting'];
    id = json['id'];
    name = json['name'];
    shortName = json['shortName'];
    logoUrl=json['logoUrl']!=null?json['logoUrl']:null;
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