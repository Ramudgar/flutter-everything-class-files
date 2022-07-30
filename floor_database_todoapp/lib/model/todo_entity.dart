import 'package:floor/floor.dart';

@entity
class Todo {
  @PrimaryKey(autoGenerate: true)
   int? id;

   String task;
   String time;
   String scheduleTime;
  
  @ignore
  bool isSelect = false;
  
  Todo(this.task, this.time, this.scheduleTime);
}
