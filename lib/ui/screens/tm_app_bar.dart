import 'package:flutter/material.dart';
class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final textThem = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        spacing: 12,
        children: [
          CircleAvatar(),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Mahim Hassan",
                style: textThem.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                "hmahim951@gmail.comn",
                style: textThem.bodyMedium?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}