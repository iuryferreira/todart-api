import 'package:uuid/uuid.dart';

class Task {
  String id;
  String message;
  bool status;
  String todoId;

  Task(String message, [String id, bool status]) {
    this.message = message;
    this.id = id;
  }

  static Task create(String message) {
    return Task(message, Uuid().v4(), false);
  }
}
