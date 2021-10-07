import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_api_bloc_example/pages/todo/states/todos_loaded.dart';
import 'package:open_api_bloc_example/pages/todo/states/todos_loading.dart';
import 'package:open_api_bloc_example/pages/todo/states/todos_state.dart';
import 'package:open_api_bloc_example/pages/todo/todos_cubit.dart';
import 'package:open_api_bloc_example/pages/todo/todos_list.dart';
import 'package:open_api_bloc_example/shared/models/todo.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
              )
            ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Container(
                  width: 20,
                ),
                const Text(
                  'Todos list',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<TodoCubit, TodosState>(builder: (context, state) {
              if (state is TodosLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );
              }
              if (state is TodosLoaded) {
                return  TodosList(todos: state.todos);
              }
              return Container();
            }),
          ),
        ],
      ),
    );
  }
}
