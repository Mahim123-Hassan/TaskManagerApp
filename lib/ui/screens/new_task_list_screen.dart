import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/Task_Samarry.dart';
import 'package:task_manager_app/ui/screens/task_card.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 8,
          children: [
            SizedBox(),
            TaskSamarry(),
            SizedBox(),
             TaskCard(),
            ListView.separated(
              itemCount: 10,
              primary: false,
              shrinkWrap: true,

              itemBuilder: (context, index) {
                return TaskCard();
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 8);
              },
            ),
          ],
        ),
      ),
    );
  }
}


