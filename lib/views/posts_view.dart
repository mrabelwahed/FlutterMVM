
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/models/posts_model.dart';
import 'package:flutter_mvvm/repository/posts_repositoryimpl.dart';
import 'package:flutter_mvvm/view_model/posts_view_model.dart';
import 'package:flutter_mvvm/views/post_details.dart';

class PostsView extends StatelessWidget {
    PostsView({Key? key}) : super(key: key);
   var postsViewModel = PostsViewModel(postsRepository: PostsRepositoryImpl());

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${postsViewModel.title}"),
      ),
      body: Center(
        child: FutureBuilder<List<PostsModel>>(
          future: postsViewModel.fetchAllPosts(),
          builder: (context , snapshot){
           if (snapshot.connectionState == ConnectionState.waiting){
             return const CircularProgressIndicator();
           }else{
             var posts = snapshot.data;
             return ListView.builder(
               itemCount: posts?.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(posts![index].title!),
                leading: Icon(Icons.book),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PostDetails(postsModel:posts![index])));
                },
              ),
             );
           }
          },
        )
      ),
    );
  }
}
