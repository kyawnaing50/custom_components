import 'package:flutter/material.dart';

class AppBarWithPageTitle extends StatelessWidget {
  const AppBarWithPageTitle({
    super.key,
    required this.textPrimaryColor,
    required this.style,
  });

  final Color textPrimaryColor;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      leading: IconButton(
        icon: Icon(Icons.menu, color: textPrimaryColor),
        onPressed: () {
          print('Drawer');
        },
      ),
      title: Text('Page Title', style: style),
      actions: [
        IconButton(
          icon: Icon(Icons.share, color: textPrimaryColor),
          onPressed: () {
            print('Share');
          },
        ),
        IconButton(
          icon: Icon(Icons.search, color: textPrimaryColor),
          onPressed: () {
            print('Search');
          },
        ),
        IconButton(
          icon: Icon(Icons.more_vert, color: textPrimaryColor),
          onPressed: () {
            print('Menu');
          },
        ),
      ],
    );
  }
}
