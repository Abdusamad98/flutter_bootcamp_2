// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bootcamp_2/utils/theme.dart';
// import 'package:flutter_bootcamp_2/widgets/my_dots.dart';
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
//       themeMode: ThemeMode.dark,
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
//         title: Text("Theme"),
//       ),
//       body: Center(
//         child: TextButton(
//           onPressed: () {
//             setState(() {
//               counter += 1;
//             });
//           },
//           child: Text(
//             "This is counter: $counter",
//             style: TextStyle(
//               // fontSize: 25,
//               color: Theme.of(context).textTheme.headline3?.color,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
