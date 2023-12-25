import 'dart:math';

import 'package:flutter/material.dart';

abstract class ShakeAnimation<
        T extends StatefulWidget> extends State<T>
    with SingleTickerProviderStateMixin {
  ShakeAnimation(this.animationDuration);
  final Duration animationDuration;
  late final animationController =
      AnimationController(
          vsync: this,
          duration: animationDuration);

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

class ShakeWidget extends StatefulWidget {
  const ShakeWidget({
    required this.child,
    required this.shakeOffset,
    Key? key,
    this.shakeCount = 3,
    this.shakeDuration =
        const Duration(milliseconds: 400),
  }) : super(key: key);
  final Widget child;
  final double shakeOffset;
  final int shakeCount;
  final Duration shakeDuration;

  @override
  // ignore: no_logic_in_create_state
  ShakeWidgetState createState() =>
      ShakeWidgetState(shakeDuration);
}

class ShakeWidgetState
    extends ShakeAnimation<ShakeWidget> {
  ShakeWidgetState(Duration duration)
      : super(duration);

  @override
  void initState() {
    super.initState();
    animationController
        .addStatusListener(_updateStatus);
  }

  void _updateStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      animationController.reset();
    }
  }

  void shake() {
    animationController.forward();
  }

  @override
  void dispose() {
    animationController
        .removeStatusListener(_updateStatus);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: widget.child,
      builder: (context, child) {
        final sineValue = sin(widget.shakeCount *
            2 *
            pi *
            animationController.value);
        return Transform.translate(
          offset: Offset(
              sineValue * widget.shakeOffset, 0),
          child: child,
        );
      },
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final double? fontSize;
  const CustomTextButton({
    required this.onPressed,
    required this.text,
    this.fontSize,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            decoration: TextDecoration.underline,
            color:
                color ?? const Color(0xFF329494),
            fontSize: fontSize ?? 14,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
