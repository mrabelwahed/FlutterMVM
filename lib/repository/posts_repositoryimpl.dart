import 'package:flutter_mvvm/models/posts_model.dart';
import 'package:flutter_mvvm/repository/posts_repository.dart';
import 'package:dio/dio.dart';
class PostsRepositoryImpl extends PostsRepository{
  @override
  Future<List<PostsModel>> getAllPosts()  async {
    List<PostsModel> posts = [] ;
    try{
      var response = await Dio().get("https://jsonplaceholder.typicode.com/posts");
       posts =  (response.data as List).map((post) => PostsModel.fromJson(post)).toList();
    }catch(exception){
      print(exception);
    }
    print(posts);
    return posts;
  }

  @override
  Future<PostsModel> getPostById(int id) {
    throw UnimplementedError();
  }

}