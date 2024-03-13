import 'package:flutter/material.dart';
import 'package:planner_app/components/appBarContent.dart';
import 'package:planner_app/components/bodyPart.dart';
import 'package:planner_app/components/datePicker.dart';
import 'package:planner_app/modules/taskData.dart';
import 'package:planner_app/pages/addNewTask.dart';
import 'package:planner_app/pages/taskTile.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddNewTask());
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarContent(),
          BodyContent(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DatePicker(date: 'Mon', text: '20'),
                DatePicker(date: 'Tue', text: '20'),
                DatePicker(date: 'Wed', text: '20'),
                DatePicker(date: 'Thu', text: '20'),
                DatePicker(date: 'Fri', text: '20'),
                DatePicker(date: 'Sat', text: '20'),
                DatePicker(date: 'Sun', text: '20'),
              ],
            ),
          ),
          Expanded(child: Container(
            child: Consumer<TaskData>(builder:(context, value, child){
              return ListView.builder(
                itemCount: value.taskList.length,
                itemBuilder: (context, index) {
                return Container(child: TaskTile(onChanged: Provider.of<TaskData>(context).boxStateChanged(false)
                , taskCompleted: value.taskList[index][1], taskName: value.taskList[index][0]),);
              });
            }
              
          
            ),
          ),)
        ],
      ),
    );
  }
}
