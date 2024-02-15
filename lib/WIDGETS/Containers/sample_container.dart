import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.text});
  final String text;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      color: Theme.of(context).primaryColor,
      width: width, //MediaQuery.of(context).size.width,
      height: height,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
