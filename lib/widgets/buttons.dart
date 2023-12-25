import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSocialButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String icon;
  final FaIcon? icons;
  final double? margin;
  final Color? color;
  const CustomSocialButton({
    required this.onTap,
    required this.text,
    required this.icon,
    this.margin,
    this.icons,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: onTap,
      child: PrimaryContainer(
        width: 305,
        color: color,
        height: 50,
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 16),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            const Spacer(),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}



class CustomSocialButtonBlack
    extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String icon;
  final FaIcon? icons;
  final double? margin;
  final Color? color;
  const CustomSocialButtonBlack({
    required this.onTap,
    required this.text,
    required this.icon,
    this.margin,
    this.icons,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: onTap,
      child: PrimaryContainer(
        width: 305,
        color: color,
        height: 50,
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 16),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            const Spacer(),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}



//---------animated

class AnimatedButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  const AnimatedButton(
      {required this.child,
      required this.onTap,
      super.key});

  @override
  State<AnimatedButton> createState() =>
      _AnimatedButtonState();
}

class _AnimatedButtonState
    extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration =
      const Duration(milliseconds: 300);
  final Tween<double> _tween =
      Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        widget.onTap();
      },
      child: ScaleTransition(
        scale: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
//-----divider with text

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.white,
            ),
          ),
          SizedBox(width: 15),
          Text(
            'or',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

//------ primary button

class PrimaryButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;
  final Color? color;
  const PrimaryButton({
    required this.onTap,
    required this.text,
    this.height,
    this.width,
    this.borderRadius,
    this.fontSize,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  State<PrimaryButton> createState() =>
      _PrimaryButtonState();
}

class _PrimaryButtonState
    extends State<PrimaryButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration =
      const Duration(milliseconds: 300);
  final Tween<double> _tween =
      Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        widget.onTap();
      },
      child: ScaleTransition(
        scale: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        ),
        child: Container(
          height: widget.height ?? 60,
          alignment: Alignment.center,
          width: widget.width ?? double.maxFinite,
          decoration: BoxDecoration(
            color: widget.color ??
                const Color(0xFF329494),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF329494)
                    .withOpacity(0.2),
                blurRadius: 7,
                offset: const Offset(0, 5),
              )
            ],
            borderRadius: BorderRadius.circular(
              widget.borderRadius ?? 10,
            ),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: widget.color == null
                  ? Colors.white
                  : Colors.black,
              fontSize: widget.fontSize ?? 20,
            ),
          ),
        ),
      ),
    );
  }
}


// -- primary container

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final double? width;
  final double? height;

  const PrimaryContainer({
    required this.child,
    this.padding,
    this.margin,
    this.color,
    this.width,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF329494)
                .withOpacity(0.2),
            blurRadius: 7,
            offset: const Offset(0, 5),
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}

