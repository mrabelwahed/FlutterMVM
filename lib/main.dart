import 'package:flutter/material.dart';
import 'package:flutter_mvvm/views/posts_view.dart';
void main() => runApp(const MyApp());

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  PostsView()
      );

    }
  }



