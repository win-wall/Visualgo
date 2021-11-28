import 'package:flutter/material.dart';
import 'package:visualgo/Screens/Sorting/Components/ThreeButton/rounded_button.dart';

class ThreeButton extends StatefulWidget {
  const ThreeButton({Key? key}) : super(key: key);

  @override
  _ThreeButtonState createState() => _ThreeButtonState();
}

class _ThreeButtonState extends State<ThreeButton> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width,
      height: size.height * 0.1,
      child: Row(
        children: <Widget>[
          RoundedButton(
            onTap: () {},
          ),
          RoundedButton(onTap: () {}),
          RoundedButton(onTap: () {})
        ],
      ),
    );
  }
}
