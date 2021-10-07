import 'package:flutter/material.dart';
import 'package:open_api_bloc_example/pages/todo/todo_widget.dart';
import 'package:open_api_bloc_example/shared/models/todo.dart';

class TodosList extends StatelessWidget {
  const TodosList({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TodoWidget(todo: todos[index]);
      },
      itemCount: todos.length,
    );
  }
}
