import 'package:flutter/material.dart';

class SlantingContainer extends StatelessWidget {
  const SlantingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Theme.of(context).primaryColor,
      alignment: Alignment.center,
      transform: Matrix4.skewY(0.2),
      child: Text(
        "Hi, I am Slanting",
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
