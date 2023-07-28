import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    // final tween = MultiTrackTween([
    //   Track("opacity")
    //       .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
    //   Track("translateY").add(
    //       Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
    //       curve: Curves.easeOut)
    // ]);

    return CustomAnimationBuilder(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: Duration(seconds: 2),
      tween: Tween(begin: 100.0, end: 200.0),
      child: child,
      // builderWithChild: (context, child, animation) => Opacity(
      //   opacity: animation["opacity"],
      //   child: Transform.translate(
      //       offset: Offset(0, animation["translateY"]), child: child),
      // ),
      builder: (BuildContext context, value, Widget? child) {
        return Opacity(
          opacity: 1,
          child: Transform.translate(offset: Offset(0, 1), child: child),
        );
      },
    );
  }
}
