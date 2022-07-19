import 'package:flutter_mvvm/models/counter_model.dart';

class HomeViewModel {
  String title = 'FirstScreen';
  var counterModel = CounterModel();

  int increment(){
    return counterModel.count++;
  }
}