import 'package:flutter/material.dart';

class CircleAnimation extends StatefulWidget {
  const CircleAnimation({
    Key key,
  }) : super(key: key);

  @override
  _CircleAnimationState createState() => _CircleAnimationState();
}

class _CircleAnimationState extends State<CircleAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _opacityAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.addListener(() {
      if (_controller.status == AnimationStatus.completed)
        _controller.reverse();
      setState(() {});
    });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 240, 240, _opacityAnimation.value),
          shape: BoxShape.circle),
    );
  }
}
