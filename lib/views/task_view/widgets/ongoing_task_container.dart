import 'package:flutter/material.dart';

class OnGoingTaskContainer extends StatelessWidget {
  const OnGoingTaskContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: const Offset(4, 4),
            blurRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.only(
        left: 20,
        right: 10,
        top: 15,
        bottom: 10,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.calendar_month,
            color: Color(0xFFF54748),
            size: 70,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Todo app design',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _buildTaskData(
                    icon: Icons.verified,
                    text: 'High Priority',
                  ),
                  const SizedBox(width: 10),
                  _buildTaskData(
                    icon: Icons.watch_later,
                    text: '4 Hours',
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 180,
                child: LinearProgressIndicator(
                  value: 0.6,
                  borderRadius: BorderRadius.circular(100),
                  minHeight: 10,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Color(0xFFF54748),
                  ),
                  backgroundColor: const Color(0xFFE1E1E1),
                ),
              ),
              const SizedBox(height: 26),
              Row(
                children: [
                  _buildMarkAsReadButton(),
                  const SizedBox(width: 15),
                  _buildSeeDetailButton(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildTaskData({
    required IconData icon,
    required String text,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFFF54748),
          size: 18,
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  _buildMarkAsReadButton() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: const Color(0xFFF54748),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 8,
      ),
      child: const Row(
        children: [
          Icon(
            Icons.download_done_outlined,
            color: Colors.white,
            size: 18,
          ),
          SizedBox(width: 5),
          Text(
            'Mark finished',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  _buildSeeDetailButton() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: Colors.white,
        border: Border.all(color: const Color(0xFFF54748),),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 20,
      ),
      child: const Center(
        child: Text(
          'See details',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFFF54748),
          ),
        ),
      ),
    );
  }
}
