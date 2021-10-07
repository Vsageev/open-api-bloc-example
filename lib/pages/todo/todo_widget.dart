import 'package:flutter/material.dart';
import 'package:open_api_bloc_example/shared/models/todo.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({Key? key, required this.todo}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
          )
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            todo.title,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Container(height: 20),
          Text(
            "user id: " + todo.userId.toString(),
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          // Container(height: ),
          Text(
            "id: " + todo.id.toString(),
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          // Container(height: 10),
          Row(
            children: [
              const Text(
                'completed: ',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              Icon(
                todo.completed
                    ? Icons.check_box_outline_blank
                    : Icons.check_box_outlined,
                color: todo.completed ? Colors.grey : Colors.green,
                size: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
