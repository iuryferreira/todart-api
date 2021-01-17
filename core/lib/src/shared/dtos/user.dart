import 'package:todart_core/src/shared/errors.dart';

import '../validator.dart';
import '../dto.dart';

class UserDto implements Dto {
  String id;
  String name;
  String username;
  String password;
  List<dynamic> todos;
  Errors errors;

  UserDto([this.id, this.name, this.username, this.password, this.todos]) {
    this.errors = Errors();
  }

  bool isValid() {
    var name = Validator.isRequired(this.name, 'name', errors);
    var username = Validator.isRequired(this.username, 'username', errors);
    var password = Validator.isRequired(this.password, 'password', errors);
    return name && username && password;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'password': password,
      'todos': todos
    };
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'username': username, 'todos': todos};
}
