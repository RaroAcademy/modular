import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onPressed,
              child: Text(
                text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
