import 'package:flutter/material.dart';

void popupError(BuildContext context, Exception err) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        title: Text('エラー出たよ'),
        children: [
          Center(child: Text('err=${err.toString()}')),
        ],
      );
    },
  );
}
