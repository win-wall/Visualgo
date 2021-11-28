import 'package:flutter/material.dart';

class SortingArea extends StatefulWidget {
  const SortingArea({Key? key}) : super(key: key);

  @override
  _SortingAreaState createState() => _SortingAreaState();
}

class _SortingAreaState extends State<SortingArea> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.amber,
      height: size.height * 0.4,
    );
  }
}
