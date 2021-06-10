import 'package:flutter/material.dart';

class TaskListAdd extends StatelessWidget {
  final Function addTaskCallBack;
  TaskListAdd(this.addTaskCallBack);
  @override
  Widget build(BuildContext context) {
    String newTaskTittle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Items',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  // we don't know when user is done for his side
                  //this is why we assume that when he/she hit the add  button
                  // so at that movement we are this he/she is done
                  //add passing the data into next pipeline
                  newTaskTittle = newText;
                },
              ),
              TextButton(
                onPressed: () {
                  addTaskCallBack(newTaskTittle);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
