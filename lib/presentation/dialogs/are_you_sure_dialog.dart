import 'package:flutter/material.dart';
import 'package:rave_flock/common/localization.dart';

class AreYouSureDialog extends StatelessWidget {
  final Function onConfirm;

  const AreYouSureDialog({Key? key, required this.onConfirm, required this.textContent}) : super(key: key);

  final String textContent;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.S.alert),
      content:  Text(textContent),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(context.S.cancel),
        ),
        TextButton(
          onPressed: () {
            onConfirm();
            Navigator.of(context).pop();
          },
          child: Text(context.S.confirm),
        ),
      ],
    );
  }
}
