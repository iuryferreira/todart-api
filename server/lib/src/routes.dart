import 'package:angel_framework/angel_framework.dart';
import 'package:todart_core/core.dart';

import 'controllers/user_controller.dart';
import 'controllers/todo_controller.dart';
import 'controllers/task_controller.dart';
import 'controllers/auth_controller.dart';

import 'middlewares/deserialize.dart';

routesTodo(Angel app) {
  app.post(
      '/todos',
      (request, response) async =>
          await container.make(TodoController).store(request, response),
      middleware: [deserialize]);
  app.post(
      '/users',
      (request, response) async =>
          await container.make(UserController).store(request, response),
      middleware: [deserialize]);
  app.post(
      '/tasks',
      (request, response) async =>
          await container.make(TaskController).store(request, response),
      middleware: [deserialize]);
  app.post(
      '/login',
      (request, response) async =>
          await container.make(AuthController).login(request, response),
      middleware: [deserialize]);
}
