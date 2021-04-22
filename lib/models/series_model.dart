class Series {
  int id;
  String name;
  String shortName;
  String shieldImageUrl;

  Series({this.id, this.name, this.shortName});

  Series.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortName = json['shortName'];
    shieldImageUrl = json['shieldImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['shortName'] = this.shortName;
    return data;
  }
}
