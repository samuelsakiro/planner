import 'package:flutter/material.dart';
import 'package:planner_app/components/indicator.dart';

class NeumphoricContainer extends StatelessWidget {
  const NeumphoricContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            'assets/calander.png',
            height: 70,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                'Todo app design',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.verified,
                    color: Colors.red,
                  ),
                  Text('high priority'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.av_timer_rounded,
                    color: Colors.red,
                  ),
                  Text('4 Hours'),
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Indicator(),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle_sharp,
                          color: Colors.red,
                        ),
                        Text(
                          'Mark finished',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.red, // Set border color to red
                        width: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Text(
                      'see details',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.red, // Set border color to red
                        width: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: Offset(4, 4),
            blurRadius: 9,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4, 4),
            blurRadius: 9,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}
