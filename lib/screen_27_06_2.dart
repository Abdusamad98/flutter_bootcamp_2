// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bootcamp_2/utils/theme.dart';
// import 'package:flutter_bootcamp_2/widgets/my_dots.dart';
// import 'dart:io' show Platform;
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//       debugShowCheckedModeBanner: false,
//       themeMode: ThemeMode.light,
//       theme: AppTheme.lightTheme,
//       darkTheme: AppTheme.darkTheme,
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int counter = 0;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       appBar: AppBar(
//         title: Text(
//           "Lists by children ",
//           style: TextStyle(fontSize: 24, color: Colors.blue),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
//             child: Text(
//               "My Contacts",
//               style: TextStyle(
//                 fontSize: 28,
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               physics: Platform.isAndroid
//                   ? AlwaysScrollableScrollPhysics()
//                   : BouncingScrollPhysics(),
//               children: getContacts(context),
//             ),
//           ),
//           TextButton(
//               onPressed: () {},
//               child: Container(
//                 height: 200,
//                 color: Colors.green,
//               ))
//         ],
//       ),
//     );
//   }
// }
//
// List<Widget> getContacts(BuildContext context) => List.generate(
//   100,
//       (index) => Container(
//     margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//     decoration: BoxDecoration(
//       color: Colors.white,
//       boxShadow: [
//         BoxShadow(
//             blurRadius: 3,
//             spreadRadius: 3,
//             offset: Offset(1, 2),
//             color: Theme.of(context).shadowColor)
//       ],
//       borderRadius: BorderRadius.circular(16),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Icon(
//           Icons.person,
//           size: 45,
//           color: Colors.green,
//         ),
//         Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Abdulloh $index",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 Text(
//                   DateTime.now().toString(),
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 )
//               ],
//             ))
//       ],
//     ),
//   ),
// );
