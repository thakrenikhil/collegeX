import 'package:collegex/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class xLoadingScreen extends ConsumerWidget {
  const xLoadingScreen({super.key});

  @override
  Widget build(
      BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
          child: CircularProgressIndicator(
        strokeWidth: 0.5,
        color: xColors.red,
      )),
    );
  }
}
