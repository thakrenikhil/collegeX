import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class xDialogBox extends ConsumerWidget {
  const xDialogBox(this.text, {super.key});
  final String text;

  @override
  Widget build(
      BuildContext context, WidgetRef ref) {
    return SimpleDialog(title: Text(text),);
  }
}
