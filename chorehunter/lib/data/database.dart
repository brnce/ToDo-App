import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

// run this method if this if the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Exercise', false],
      ['Read a Book', false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
