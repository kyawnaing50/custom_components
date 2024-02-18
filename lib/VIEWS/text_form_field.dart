import 'package:flutter/material.dart';

import '../WIDGETS/DrawerWidget/drawer_widget.dart';
import '../WIDGETS/Responsive/my_responsive_schema.dart';
import '../WIDGETS/TextFormField/text_form_field.dart';

class MyTextFormPage extends StatelessWidget {
  const MyTextFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Text Views",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.deepPurple),
        ),
        centerTitle: true,
      ),
      body: 
      MyResponsiveSchema(
        mobile: const MyTextFormFieldWidget(
          label: "label",
          textEditingController: null,
          keyboardType: TextInputType.name,
          hintText: "hintText",
          preficIcon: null,
          surfixIcon: null,
        ),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
