class postModel {
  late final int userid;
  late final int id;
  late String title;
  late String body;
  postModel(
      {required this.userid,
      required this.id,
      required this.title,
      required this.body});

  postModel.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}
