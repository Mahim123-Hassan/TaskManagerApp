import 'package:flutter/material.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 8,
        children: [
          SizedBox(),
          _buildTaskSumaryListView(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
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
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.grey,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.grey,))
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _buildTaskSumaryListView extends StatelessWidget {
  const _buildTaskSumaryListView({super.key});

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
