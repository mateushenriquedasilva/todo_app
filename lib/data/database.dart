import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // ref our box
  final _myBox = Hive.box('myBox');

  // open method 1st time ever opening this app
  void createInitiaData() {
    toDoList = [
      ["Task example...", false]
    ];
  }

  // laod the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // up database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
