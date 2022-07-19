import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view_model/home_view_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var viewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("${viewModel.counterModel.count}"),
          TextButton(onPressed: (){
            setState(() {
              viewModel.increment();
            });
          }, child: Icon(Icons.add))
        ],),
      ),
    );
  }
}