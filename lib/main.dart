import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bootcamp_2/utils/theme.dart';
import 'package:flutter_bootcamp_2/widgets/my_dots.dart';
import 'dart:io' show Platform;

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
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
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

  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "TextField",
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: TextFormField(
              controller: controller,
              onChanged: (value) {
                print(value);
                print(controller.text);
              },
              textAlign: TextAlign.center,
              cursorHeight: 40,
              obscureText: false,
              cursorWidth: 4,
              cursorColor: Colors.red,
              keyboardType: TextInputType.datetime,
              style: TextStyle(fontSize: 40, color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.grey.shade300,
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 30),
                prefixIcon: Image.asset("name"),
                suffixIcon: Icon(
                  controller.text.length > 3
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Theme.of(context).primaryColorDark,
                ),
                //prefixIconColor: Colors.yellow,
                label: Icon(Icons.star),
                //labelText: "Label text",
                focusColor: Colors.red,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 2, color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.green),
                  borderRadius: BorderRadius.circular(20),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                // prefixText: "https",
                // prefixStyle: TextStyle(fontSize: 40, color: Colors.red),
                hintText: "Enter website",
                hintStyle: TextStyle(fontSize: 40, color: Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> getContacts(BuildContext context) => List.generate(
      100,
      (index) => Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                spreadRadius: 3,
                offset: Offset(1, 2),
                color: Theme.of(context).shadowColor)
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.person,
              size: 45,
              color: Colors.green,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Abdulloh $index",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  DateTime.now().toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );

Widget getSingleWidget(BuildContext context, int index) => Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 3,
              spreadRadius: 3,
              offset: Offset(1, 2),
              color: Theme.of(context).shadowColor)
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.person,
            size: 45,
            color: Colors.green,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Abdulloh $index",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                DateTime.now().toString(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ))
        ],
      ),
    );
