//Fake Server

import 'package:projet/Api/models/todo.dart';

abstract class Repository {
  //get
  Future<List<Todo>> getTodoList();

  //patch
  Future<String> patchCompleted(Todo todo);

  //put
  Future<String> putCompleted(Todo todo);

  //delete
  Future<String> deletedTodo(Todo todo);

  //post
  Future<String> postTodo(Todo todo);
}

