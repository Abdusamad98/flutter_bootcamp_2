import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bootcamp_2/widgets/my_dots.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        leading: Container(
          padding: EdgeInsets.only(left: 5),
          margin: EdgeInsets.all(14),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.blue.shade300),
          child: Center(
              child: Icon(
            Icons.arrow_back_ios,
            size: 16,
          )),
        ),
        centerTitle: true,
        title: Text(
          "My Wallet",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text(
            "This is counter: $counter",
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
