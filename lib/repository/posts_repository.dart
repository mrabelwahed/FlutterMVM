import 'package:flutter_mvvm/models/posts_model.dart';

abstract class PostsRepository{
  Future<List<PostsModel>> getAllPosts();
  Future<PostsModel> getPostById(int id);
}