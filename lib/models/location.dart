class Location {
  late int id;
  late String name;
  late String type;
  late String dimension;
  late List<String> residents;
  late String url;
  late String created;

  Location({id, name, type, dimension, residents, url, created});

  factory Location.fromJson(Map<String, dynamic> json) => Location(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      dimension: json['dimension'],
      residents: json['residents'].cast<String>(),
      url: json['url'],
      created: json['created']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['dimension'] = dimension;
    data['residents'] = residents;
    data['url'] = url;
    data['created'] = created;
    return data;
  }
}
