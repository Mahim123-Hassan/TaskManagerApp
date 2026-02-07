import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        tileColor: Colors.white,
        title: Text("Title of Task"),
        subtitle: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Description of the Task",
              style: TextStyle(color: Colors.grey),
            ),
            Text("Date: 5 February 2026"),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),

                    child: Text(
                      "New",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
