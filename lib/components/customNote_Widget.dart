import 'package:flutter/material.dart';

class CustomNoteWidget extends StatelessWidget {
  const CustomNoteWidget({
    super.key,
    this.title,
    this.subTitle,
    this.customIcon,
  });

  final String? title;
  final String? subTitle;
  final Icon? customIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: theme.secondaryFixed,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          customIcon ?? Icon(Icons.hourglass_empty),
          SizedBox(height: 5),
          // Title
          Text(
            title!,
            style: TextStyle(
              color: theme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),

          // SubTitle
          Text(subTitle!, style: TextStyle(color: theme.onSecondary)),
        ],
      ),
    );
  }
}
