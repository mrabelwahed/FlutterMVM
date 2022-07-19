import 'package:flutter/material.dart';
import 'package:flutter_mvvm/models/posts_model.dart';
import 'package:flutter_mvvm/view_model/post_view_model.dart';
class PostDetails extends StatelessWidget {
   PostDetails({Key? key , @required this.postsModel}) : super(key: key);
   PostsModel ? postsModel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Details"),),
        body: Center(
          child:  Text("${postsModel?.body}"),
        ),
      ),
    );
  }
}
