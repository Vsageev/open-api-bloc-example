import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_api_bloc_example/pages/todo/todos_cubit.dart';
import 'package:open_api_bloc_example/pages/todo/todos_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Todos sample',
    debugShowCheckedModeBanner: false,
    home: BlocProvider(
      create: (context) => TodoCubit(),
      child: const TodoPage(),
    ),
  ));
}
