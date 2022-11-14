import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:keyboard_attachable/src/animation/keyboard_animation_controller.dart';

class IOSKeyboardAnimationController implements KeyboardAnimationController {
  IOSKeyboardAnimationController({required TickerProvider vsync})
      : //_spring = const SpringDescription(mass: 8, stiffness: 1, damping: 4.5),
        _spring = const SpringDescription(mass: 3, stiffness: 1, damping: 500),
        _springVelocity = 20,
        _delay = 0,
        _controller = AnimationController(vsync: vsync, duration: const Duration(milliseconds: 50));

  final SpringDescription _spring;
  final double _springVelocity;
  final double _delay;
  final AnimationController _controller;

  @override
  Animation<double> get animation => CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      );

  @override
  void dispose() => _controller.dispose();

  @override
  TickerFuture forward() => _controller.forward();

  @override
  TickerFuture reverse() => _controller.reverse();
}
