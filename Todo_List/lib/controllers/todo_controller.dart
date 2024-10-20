import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/todo.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;
  TextEditingController todotextController = TextEditingController();
  // Add
  void addTodo(String title) {
    if (title.isNotEmpty) {
      todos.add(Todo(title: title));
    }
  }

  // Delete
  void removeAt(int index) {
    todos.removeAt(index);
  }

  // Update
  void toggleTodoStatus(int index) {
    todos[index].isDone = !todos[index].isDone;
    todos.refresh();
  }
}
