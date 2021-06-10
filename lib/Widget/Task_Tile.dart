import 'package:flutter/material.dart';

//we are only have set state in the StatefulWidget

class TaskTile extends StatelessWidget {
// ignore: camel_case_types
  final bool isCheck;
  final String taskTittle;
  final Function callBackfuction;

  TaskTile({this.isCheck, this.taskTittle, this.callBackfuction});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTittle,
        style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.w500,
            fontSize: 22.0,
            decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.blueGrey,
          value: isCheck,
          onChanged: callBackfuction),
    );
  }
}

// TaskCheckBox(
// checkBoxState: isCheck,
// setSateCheckBox: setCheckBox,
// ),
