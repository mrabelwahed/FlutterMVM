import 'package:dio/dio.dart';
import 'package:flutter_mvvm/models/posts_model.dart';
import 'package:flutter_mvvm/repository/posts_repository.dart';
import 'package:flutter_mvvm/repository/posts_repositoryimpl.dart';
class PostsViewModel{
  final String title = "All Posts";
  PostsRepository? postsRepository;

  PostsViewModel({this.postsRepository});

  Future<List<PostsModel>> fetchAllPosts() async{
    return PostsRepositoryImpl().getAllPosts();
  }
}