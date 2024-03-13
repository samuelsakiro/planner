import 'package:flutter/material.dart';
import 'package:planner_app/components/neumphoricContainer.dart';

class BodyContent extends StatelessWidget {
  BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            'Ongoing task',
            style: TextStyle(
                color: Colors.red, fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
        NeumphoricContainer(),
        SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            'Date wise tasks',
            style: TextStyle(
                color: Colors.red, fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
