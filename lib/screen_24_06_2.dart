// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
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
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarBrightness: Brightness.light,
//           statusBarColor: Colors.white,
//           statusBarIconBrightness: Brightness.dark,
//         ),
//         leading: Container(
//           padding: EdgeInsets.only(left: 5),
//           margin: EdgeInsets.all(14),
//           decoration: BoxDecoration(
//               shape: BoxShape.circle, color: Colors.blue.shade300),
//           child: Center(
//               child: Icon(
//                 Icons.arrow_back_ios,
//                 size: 16,
//               )),
//         ),
//         centerTitle: true,
//         title: Text(
//           "My Wallet",
//           style: TextStyle(fontSize: 20, color: Colors.black),
//         ),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 27,
//           ),
//           Stack(
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: MediaQuery.of(context).size.height * 0.2,
//                 child: Center(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(40),
//                     child: Image.asset("assets/tools.jpg"),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 76,
//                 bottom: 46,
//                 right: 65,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(".... .... .... 4552",
//                         style: TextStyle(fontSize: 20, color: Colors.white)),
//                     Text("02/24",
//                         style: TextStyle(fontSize: 20, color: Colors.white))
//                   ],
//                 ),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           MyDots(),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             children: [
//               Container(
//                 height: 1,
//                 width: 25,
//                 color: Colors.blue,
//               ),
//               Container(
//                 height: 3,
//                 width: 15,
//                 decoration: BoxDecoration(
//                     color: Colors.blue, borderRadius: BorderRadius.circular(4)),
//               ),
//               Expanded(
//                 child: Container(
//                   height: 1,
//                   color: Colors.blue,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
