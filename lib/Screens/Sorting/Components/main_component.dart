import 'package:flutter/material.dart';
import 'package:visualgo/Screens/Sorting/Components/back_button.dart';
import 'package:visualgo/Screens/Sorting/Components/description.dart';
import 'package:visualgo/Screens/Sorting/Components/sorting_area.dart';
import 'package:visualgo/Screens/Sorting/Components/status_bar.dart';
import 'package:visualgo/Screens/Sorting/Components/three_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: BackButton1(
              onTap: () {
                print(size.runtimeType);
              },
            ),
          ),
          SortingArea(),
          StatusBar(),
          ThreeButton(),
          Description(),
        ],
      ),
    ));
  }
}
