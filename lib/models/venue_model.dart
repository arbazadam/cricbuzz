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
