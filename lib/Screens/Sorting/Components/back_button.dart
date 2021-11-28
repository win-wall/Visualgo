import 'package:flutter/material.dart';

class BackButton1 extends StatelessWidget {
  final VoidCallback onTap;

  const BackButton1({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: onTap,
        child: SafeArea(
          child: Container(
            color: Colors.blue,
            height: size.height * 0.08,
            width: size.height * 0.08,
          ),
        ));
  }
}
