import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.onSavePressed});

  final void Function() onSavePressed;

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        TextButton(
          onPressed: onSavePressed,
          child: Text(
            localizations.okButtonLabel,
          ),
        ),
        const SizedBox(width: 16),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop<DateTime>();
          },
          child: Text(
            localizations.cancelButtonLabel,
          ),
        ),
      ],
    );
  }
}
