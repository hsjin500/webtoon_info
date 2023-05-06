class WebtoonEpisodeModel {
  final String id, title, rating, date;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : id = (int.parse(json['id']) + 1).toString(),
        title = json['title'],
        rating = json['rating'],
        date = json['date'];
}
