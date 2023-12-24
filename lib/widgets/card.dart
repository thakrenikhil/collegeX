import 'package:collegex/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  xCard({super.key});

  Widget? child;

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
      child:
          child ?? const Text('add a child here'),
    );
  }
}
