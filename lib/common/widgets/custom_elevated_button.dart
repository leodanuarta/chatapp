import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressd;
  final String text;
  const CustomElevatedButton({
    Key? key,
    this.buttonWidth,
    required this.onPressd,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: buttonWidth ?? MediaQuery.of(context).size.width - 100,
      child: ElevatedButton(
        onPressed: onPressd,
        child: Text(
          text,
        ),
      ),
    );
  }
}
