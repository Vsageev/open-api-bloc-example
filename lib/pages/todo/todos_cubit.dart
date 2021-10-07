import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_api_bloc_example/pages/todo/states/todos_loaded.dart';
import 'package:open_api_bloc_example/pages/todo/states/todos_loading.dart';
import 'package:open_api_bloc_example/pages/todo/states/todos_state.dart';
import 'package:open_api_bloc_example/shared/models/todo.dart';
import 'package:http/http.dart' as http;

class TodoCubit extends Cubit<TodosState> {
  TodoCubit() : super(TodosLoading()) {
    _loadTodos();
  }

  _loadTodos() async {
    List<Todo> todos = [];

    try {
      var rez = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/todos'),
      );

      if (rez.statusCode == 200) {
        todos = (json.decode(rez.body) as List<dynamic>).map((e) {
          return Todo.fromMap(e);
        }).toList();
      }
    } catch (e) {}

    // print(todos);

    emit(TodosLoaded(todos: todos));
  }
}
