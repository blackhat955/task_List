import 'package:flutter/material.dart';
import 'package:todo_list/Widget/Task_Tile.dart';
import 'package:todo_list/model/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  Function callBackFunction;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        //index value coming from the current context of the list
        return TaskTile(
            taskTittle: widget.tasks[index].name,
            isCheck: widget.tasks[index].isDone,
            callBackfuction: (checkBoxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}

// physics:
// const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
