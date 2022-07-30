// ignore: import_of_legacy_library_into_null_safe
import 'package:floor/floor.dart';
import 'package:floor_database_todoapp/model/todo_entity.dart';

/// Created by Jai on 15,May,2020
@dao
abstract class TodoDao {
  @Query('SELECT * FROM todo')
  Future<List<Todo?>> findAllTodo();

  @Query('Select * from todo order by id desc limit 1')
  Future<Todo?> getMaxTodo();

  @Query('SELECT * FROM todo order by id desc')
  Stream<List<Todo?>> fetchStreamData();

  @insert
  Future<void> insertTodo(Todo todo);

  @insert
  Future<List<int>> insertAllTodo(List<Todo> todo);

  @Query("delete from todo where id = :id")
  Future<void> deleteTodo(int id);

  @delete
  Future<int> deleteAll(List<Todo> list);
}
