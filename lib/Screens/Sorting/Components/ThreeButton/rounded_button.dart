import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final VoidCallback onTap;

  const RoundedButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        color: Colors.purple,
        width: size.width * 0.18,
        child: Align(
          alignment: Alignment(0.1, 0.1),
        ));
  }
}
