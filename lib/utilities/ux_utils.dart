import 'package:collegex/widgets/x_dialogbox.dart';
import 'package:flutter/material.dart';

class xUxUtils {
  static show_Dialog(
      BuildContext context, String text) {
    return showDialog(
        context: context,
        builder: (context) {
          return xDialogBox(text);
        });
  }
}
