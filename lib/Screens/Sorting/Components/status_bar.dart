import 'package:flutter/material.dart';

class StatusBar extends StatefulWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  _StatusBarState createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blueGrey,
      width: size.width,
      height: size.height * 0.08,
      child: Align(
        alignment: Alignment(-0.7, 0),
        child: Container(
          height: size.height * 0.03,
          width: size.width * 0.75,
          color: Colors.red,
        ),
      ),
    );
  }
}
