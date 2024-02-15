// import 'package:flutter/material.dart';
// import 'my_responsive_schema.dart';

// class MyResponsiveSampleView extends StatelessWidget {
//   const MyResponsiveSampleView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: MyResponsiveSchema(
//           mobile: Column(
//             children: [
//               Container(color: Colors.green, width: 400, height: 100),
//               Container(color: Colors.red, width: 400, height: 100),
//               Container(color: Colors.yellow, width: 400, height: 100),
//               Container(color: Colors.yellow, width: 400, height: 100),
//             ],
//           ),
//           tablet: GridView(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2),
//             children: [
//               Container(color: Colors.green, width: 400, height: 100),
//               Container(color: Colors.red, width: 400, height: 100),
//               Container(color: Colors.yellow, width: 400, height: 100),
//               Container(color: Colors.yellow, width: 400, height: 100),
//             ], //getListOfWidgets(context),
//           ),
//           desktop: Row(children: [
//             Container(color: Colors.green, width: 400, height: 100),
//             Container(color: Colors.red, width: 400, height: 100),
//             Container(color: Colors.yellow, width: 400, height: 100),
//             Container(color: Colors.yellow, width: 400, height: 100),
//           ]) //
//           // getListOfWidgets(context)),
//           ),
//     );
//   }
// }

// List<Widget> getListOfWidgets(BuildContext contex) {
//   List<Color> colors = [Colors.red, Colors.green, Colors.blue];
//   List<Widget> listOfWidgets = [];

//   for (var i = 0; i < colors.length; i++) {
//     listOfWidgets.add(Container(
//       width: 200,
//       color: colors[i],
//       child: Text("${i + 1} Section"),
//     ));
//   }
//   return listOfWidgets;
// }
