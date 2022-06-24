// import 'package:flutter/material.dart';
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
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Stack"),
//       ),
//       body: SizedBox(
//         height: 200,
//         child: Stack(
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               height: 180,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   color: Colors.red, borderRadius: BorderRadius.circular(30)),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(30),
//                 child: Image.asset(
//                   "assets/tools.jpg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 20,
//               left: 0,
//               right: 0,
//               child: Container(
//                 child: Column(
//                   children: [
//                     Text(
//                       "Tools are the best",
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w800,
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
//               width: 40,
//               height: 40,
//               decoration:
//               BoxDecoration(color: Colors.white, shape: BoxShape.circle),
//               child: Center(
//                 child: Icon(
//                   Icons.heart_broken_sharp,
//                   color: Colors.red,
//                   size: 30,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
