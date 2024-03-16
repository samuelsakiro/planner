import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:planner_app/modules/taskData.dart';
import 'package:planner_app/views/task_view/widgets/date_wise_task.dart';

class DateWiseTaskList extends StatelessWidget {
  const DateWiseTaskList({super.key, required this.dateWiseTasks,});

  final List<DateWiseModel> dateWiseTasks;

  @override
  Widget build(BuildContext context) {

    final List<Widget> items = dateWiseTasks.map((e) => DateWiseTask()).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items,
      ),
    );

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => DateWiseTask(),
      itemCount: dateWiseTasks.length,
    );

    // return Container(
    //   padding: EdgeInsets.all(10),
    //   child: Column(
    //     children: [
    //       Text(DateFormat('EEE').format(tasks),style: TextStyle(
    //           fontWeight: FontWeight.w600,
    //           fontSize: 14,
    //           color: textColor
    //       ),),
    //       SizedBox(height: 5),
    //       Text(number),
    //     ],
    //   ),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(15),
    //     color: color,
    //   ),
    // );
  }
}
