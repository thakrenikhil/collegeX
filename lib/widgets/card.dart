import 'package:collegex/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

// Mixin for providing common styling properties
mixin CardStyles {
  final Color backgroundColor = xColors.grey;
  BorderRadius borderRadius =
      BorderRadius.circular(8.0);
  final Color borderColor = xColors.orange;
  final EdgeInsets padding =
      const EdgeInsets.all(20.0);
}

class xCard extends ConsumerWidget
    with CardStyles {
  xCard(this.child, {super.key});

  final Widget child;

  xCard WithCircular(double radius) {
    borderRadius = BorderRadius.circular(radius);
    return this;
  }

  @override
  Widget build(
      BuildContext context, WidgetRef ref) {
    return Card(
      surfaceTintColor: xColors.orange,
      borderOnForeground: false,
      shape: RoundedRectangleBorder(
          borderRadius: borderRadius),
      shadowColor: xColors.orange,
      margin: padding,
      elevation: 1,
      color: xColors.grey,
      child: Center(
          child: child ??
               Text('add a child here')),
    );
  }
}


