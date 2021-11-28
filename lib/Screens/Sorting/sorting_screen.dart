import 'package:flutter/material.dart';
import 'package:visualgo/Screens/Sorting/Components/main_component.dart';
import 'package:visualgo/Screens/Sorting/Components/menu.dart';

class SortingScreen extends StatefulWidget {
  const SortingScreen({Key? key}) : super(key: key);

  @override
  _SortingScreenState createState() => _SortingScreenState();
}

class _SortingScreenState extends State<SortingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          MainScreen(),
          MyMenu(
            beign: MediaQuery.of(context).size.width * 0.55,
            end: MediaQuery.of(context).size.width * 0.8,
          )
        ],
      ),
    );
  }
}
