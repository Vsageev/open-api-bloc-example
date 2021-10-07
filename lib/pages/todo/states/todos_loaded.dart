import 'package:open_api_bloc_example/pages/todo/states/todos_state.dart';
import 'package:open_api_bloc_example/shared/models/todo.dart';

class TodosLoaded extends TodosState {
  List<Todo> todos;
  TodosLoaded({
    required this.todos,
  });
}
