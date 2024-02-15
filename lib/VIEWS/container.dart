import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_schema.dart';

import '../WIDGETS/Containers/nested_container.dart';
import '../WIDGETS/Containers/sample_container.dart';
import '../WIDGETS/Containers/slanting_container.dart';
import '../WIDGETS/Containers/slanting_edges.dart';
import '../WIDGETS/DrawerWidget/drawer_widget.dart';

class ContainaerPage extends StatelessWidget {
  const ContainaerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Containers",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: MyResponsiveSchema(
        mobile: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SampleContainer(
                height: 96,
                width: MediaQuery.of(context).size.width,
                text: "I am Sample Container"),
            const SlantingContainer(),
            const SizedBox(
              height: 48,
            ),
            const SlantingWithEdge(),
            const SizedBox(
              height: 64,
            ),
            const NestedContainer(),
          ],
        ),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
