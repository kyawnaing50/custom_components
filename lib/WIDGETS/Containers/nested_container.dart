import 'package:flutter/material.dart';

class NestedContainer extends StatelessWidget {
  const NestedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.white,
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.green,
            child: Center(
              child: Container(
                height: 25,
                width: 25,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
