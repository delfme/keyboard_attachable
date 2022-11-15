import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/physics.dart';
import 'package:keyboard_attachable/src/animation/keyboard_animation_controller.dart';

class IOSKeyboardAnimationController implements KeyboardAnimationController {
  IOSKeyboardAnimationController({required TickerProvider vsync})
      : _controller = AnimationController(
    vsync: vsync,
    duration: const Duration(milliseconds: 150),
  );
  

  AnimationController _controller;



  // Calculated based on spring interpolation from https://github.com/CosynPa/RevealSpringAnimation
// @override
   Animation<double> get animation =>  TweenSequence<double>(
    <TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.0, end: 0.0378945710726348)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.0378945710726348, end: 0.124734869398615)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.124734869398615, end: 0.177165077399258)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.1771650773992585, end: 0.232230492534301)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.232230492534301, end: 0.288142884918677)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.288142884918677, end: 0.343566301349425)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.343566301349425, end: 0.397525020517165)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.397525020517165, end: 0.449328480839688)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.449328480839688, end: 0.498510223492776)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.498510223492776, end: 1)
            .chain(CurveTween(curve: Curves.linear)),
        weight: 10.0,
      ),
    ],
  ).animate(CurvedAnimation(parent: _controller, curve: Interval(0, 1.0)));
   

  @override
  void dispose() => _controller.dispose();

  @override
  TickerFuture forward() => _controller.forward();

  @override
  TickerFuture reverse() => _controller.reverse();


}
