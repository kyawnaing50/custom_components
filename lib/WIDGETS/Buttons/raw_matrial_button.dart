import 'package:flutter/material.dart';

class MyRawMaterialButton extends StatelessWidget {
  const MyRawMaterialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      shape: const CircleBorder(),
      elevation: 2,
      splashColor: Colors.red,
      fillColor: Colors.deepPurple,
      highlightColor: Colors.transparent,
      child: const Icon(
        Icons.play_arrow,
        color: Colors.limeAccent,
      ),
    );
  }
}
