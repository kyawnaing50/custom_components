import 'package:flutter/material.dart';

class AppBarWithCustomImage extends StatelessWidget {
  const AppBarWithCustomImage({
    super.key,
    required this.style,
  });

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        color: Colors.black,
        onPressed: () {
          print('Back button');
        },
      ),
      title: Text('With Custom Image', style: style),
      backgroundColor: Colors.cyan,
      actions: [
        IconButton(
          onPressed: () {
            print('Profile');
          },
          icon: Image.network(
              'https://tecake.com/wp-content/uploads/2018/07/student-profile-gabriela-mills-college.jpg'),
        )
      ],
    );
  }
}
