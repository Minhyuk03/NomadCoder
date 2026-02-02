class WebtoonModel {
<<<<<<< HEAD
  late final String title, thumb, id;
=======
  final String title, thumb, id;
>>>>>>> 04b2658 (flutter end)

  WebtoonModel.fromJson(Map<String, dynamic> json)
    : title = json['title'],
      thumb = json['thumb'],
      id = json['id'];
}
