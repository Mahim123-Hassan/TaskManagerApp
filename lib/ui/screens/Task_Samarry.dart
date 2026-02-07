import 'package:flutter/material.dart';
class TaskSamarry extends StatelessWidget {
  const TaskSamarry({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            color: Colors.white,
            margin: EdgeInsets.only(left: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text("12", style: TextTheme.of(context).titleMedium),
                  Text("New", style: TextTheme.of(context).labelSmall),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}