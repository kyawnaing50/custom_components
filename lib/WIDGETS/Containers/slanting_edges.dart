import 'package:flutter/material.dart';

class SlantingWithEdge extends StatelessWidget {
  const SlantingWithEdge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.0 +
              50.0),
      padding: const EdgeInsets.all(8.0),
      color: Theme.of(context).primaryColor,
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(0.2),
      child: const Text(
        "I an Slanting but see my edges",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
