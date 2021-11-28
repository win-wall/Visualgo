import 'package:flutter/material.dart';

class MyMenu extends StatefulWidget {
  final double beign;
  final double end;
  const MyMenu({
    Key? key,
    required this.beign,
    required this.end,
  }) : super(key: key);

  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> with SingleTickerProviderStateMixin {
  double? left1;
  double? left_min;
  double? left_max;
  void initState() {
    // TODO: implement initState
    left1 = widget.end;
    left_min = widget.beign;
    left_max = widget.end;
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
  }

  double? temp = -1;
  double? change = 0;
  bool ismax = true;
  bool ismin = false;
  bool ismiddle = false;
  bool iszero = true;
  double slide = 0;
  AnimationController? animationController;

  void toggle() {
    print('Đã tap');
    if (animationController!.value == 1) {
      animationController!.value = 0;
    }
    animationController!.forward();

    setState(() {});
  }

  void _onTap(PointerEvent details) {
    temp = left1;
  }

  void _onMove(PointerEvent details) {
    temp = 0;
    setState(() {
      if (details.position.dx >= left_min! && details.position.dx <= left_max!)
        left1 = details.position.dx;
      else if (details.position.dx < left_min!)
        left1 = left_min;
      else if (details.position.dx > left_max!) left1 = left_max;
    });
  }

  void _onUp(PointerEvent details) {
    if (ismax || ismin) {
      print('da');
      toggle();

      setState(() {});
    }
    if (ismax == true) {
      ismax = false;
      ismin = true;
      ismiddle = false;
      change = (left1! - left_min!);
    } else {
      ismax = true;
      ismin = false;
      ismiddle = false;
      change = (left_max! - left1!);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var mybottom = Container(
      color: Colors.yellow,
      width: size.width * 0.5,
      height: size.height,
    );
    return Positioned(
      left: left1,
      child: Listener(
        onPointerDown: _onTap,
        onPointerMove: _onMove,
        onPointerUp: _onUp,
        child: AnimatedBuilder(
          animation: animationController!,
          builder: (context, _) {
            if (ismax == true) {
              slide = (1 - animationController!.value);
            } else if (ismin == true) {
              slide = -(change! * animationController!.value);
            }
            return Transform(
              transform: Matrix4.identity()..translate(slide),
              child: mybottom,
            );
          },
        ),
      ),
    );
  }
}

double max(double a, double b) {
  if (b > a) {
    return b;
  }
  return a;
}
