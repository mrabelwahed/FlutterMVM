class PostsModel{
  int? id;
  int?userId;
  String? title;
  String? body;

  PostsModel({this.id, this.userId , this.title, this.body});

  PostsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

   Map<String, dynamic> toJson(){
    return {
      "userId": userId,
      "id": id,
      "title": title,
      "body": body
    };
  }
}