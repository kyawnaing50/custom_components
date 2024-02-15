import 'package:flutter/material.dart';

class MaterialButton extends StatelessWidget {
  const MaterialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orange,
      child: InkWell(
        onTap: () {},
        child: const SizedBox(
          width: 80,
          height: 40,
        ),
      ),
    );
  }
}
