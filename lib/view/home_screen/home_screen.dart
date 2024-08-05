import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    var screenOrientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
          backgroundColor: screenWidth > 500 ? Colors.blue : Colors.red,
          body: InkWell(
            onTap: () {
              if (screenOrientation == Orientation.landscape) {
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.portraitUp]);
              } else {
                SystemChrome.setPreferredOrientations(
                    [DeviceOrientation.landscapeLeft]);
              }
              setState(() {});
            },
            child: Container(
              color: Colors.white,
              width: screenWidth * .5,
              child: Text(screenOrientation.name.toString()),
            ),
          )),
    );
  }
}
