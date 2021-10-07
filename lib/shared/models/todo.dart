import 'dart:convert';

class Todo {
  int userId;
  int id;
  String title;
  bool completed;
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
      completed: map['completed'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source));
}
