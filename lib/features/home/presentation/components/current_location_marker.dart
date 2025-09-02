import 'package:flutter/material.dart';
import 'package:generic_map/generic_map.dart';



class CurrentLocationMarker extends StatefulWidget {
  const CurrentLocationMarker({super.key});

  @override
  State<CurrentLocationMarker> createState() => _CurrentLocationMarkerState();

  CenterMarker get marker => CenterMarker(
    widget: this,
    size: const Size(55, 55),
    alignment: Alignment.center,
  );
}

class _CurrentLocationMarkerState extends State<CurrentLocationMarker> // Исправлено здесь
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int _jumpCount = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = TweenSequence<double>( [
      TweenSequenceItem(tween: Tween(begin: 20.0, end: -10.0), weight: 1), // Подъем
      TweenSequenceItem(tween: Tween(begin: -10.0, end: 20.0), weight: 0.5), // Пауза в верхней точке

    ],).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _jumpCount++;
        if (_jumpCount < 2) {
          _controller.reverse();
        } else {
          _controller.stop();
        }
      } else if (status == AnimationStatus.dismissed) {
        if (_jumpCount < 2) {
          _controller.forward();
        }
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/pickup.png',
              width: 45,
              height: 45,
            ),
          ),
        );
      },
    );
  }
}
