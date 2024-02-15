import 'package:flutter/material.dart';

class WithSingleActionAppbar extends StatelessWidget {
  const WithSingleActionAppbar({
    super.key,
    required this.style,
    required this.textPrimaryColor,
  });

  final TextStyle style;
  final Color textPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        color: Colors.black,
        onPressed: () {
          print('Back button');
        },
      ),
      title: Text('With Single Action', style: style),
      // leading: leadingWidget(),
      actions: [
        IconButton(
          icon: Icon(Icons.settings, color: textPrimaryColor),
          onPressed: () {
            print('Settings');
          },
        )
      ],
      backgroundColor: Colors.yellow,
    );
  }
}
