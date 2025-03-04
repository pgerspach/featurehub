import 'package:flutter/material.dart';

class FHAlertDialog extends StatelessWidget {
  final Widget title;
  final Widget content;
  final List<Widget> actions;

  const FHAlertDialog(
      {Key? key,
      required this.title,
      required this.content,
      required this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const ModalBarrier(dismissible: true, color: Colors.black54),
      AlertDialog(
        scrollable: true,
        title: title,
        content: content,
        actions: actions,
        buttonPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      )
    ]);
  }
}
