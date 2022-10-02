import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //reference the box
  final _myBox = Hive.box("mybox");
  // run this method to first time opening this app
  void createInitialData() {
    toDoList = [
      ["Press add button to add todo", false],
      ["Swipe to delete todo", false],
    ];
  }

  // load todo from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
