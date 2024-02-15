import 'package:flutter/material.dart';

class MyTextFormFieldWidget extends StatelessWidget {
  const MyTextFormFieldWidget({
    super.key,
    required this.label,
    this.obscureText = false,
    this.enabled = true,
    required this.textEditingController,
    required this.keyboardType,
    required this.hintText,
    required this.preficIcon,
    required this.surfixIcon,
  });

  final String? label;
  final bool? obscureText;
  final bool? enabled;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? preficIcon;
  final Widget? surfixIcon;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText!,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      enabled: enabled,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 12.0),
        constraints: BoxConstraints(
          maxHeight: height * 0.065,
          maxWidth: width,
        ),
        filled: true,
        // fillColor: Colors.green,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.red,
        ),
        prefixIcon: const Icon(Icons.email),
        suffixIcon: const Icon(Icons.phone),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.grey, width: 0.4),
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(20),
        //   borderSide: BorderSide(
        //     color: Colors.red,
        //     width: 1,
        //   ),
        // ),
        labelText: label,
        labelStyle: TextStyle(fontSize: 20, overflow: TextOverflow.visible),
        // focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(30),
        //     borderSide: BorderSide(color: Colors.green)),
      ),
    );
  }
}
