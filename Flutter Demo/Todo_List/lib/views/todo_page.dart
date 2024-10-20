import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/controllers/todo_controller.dart';

class TodoPage extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  TodoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "To-Do App",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            todoController.addTodo(todoController.todotextController.text);
            todoController.todotextController.clear();
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            // Todo_list Details
            Expanded(
                child: Obx(() => ListView.builder(
                    itemCount: todoController.todos.length,
                    itemBuilder: (context, index) {
                      final todo = todoController.todos[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ListTile(
                            title: Text(
                              todo.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: todo.isDone
                                      ? TextDecoration.lineThrough
                                      : TextDecoration.none),
                            ),
                            leading: Checkbox(
                                value: todo.isDone,
                                onChanged: (Value) {
                                  todoController.toggleTodoStatus(index);
                                }),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                todoController.removeAt(index);
                              },
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green,
                          ),
                        ),
                      );
                    }))),

            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: todoController.todotextController,
                      decoration: InputDecoration(labelText: 'Add a Text'),
                    ))
              ],
            )
          ],
        ));
  }
}
