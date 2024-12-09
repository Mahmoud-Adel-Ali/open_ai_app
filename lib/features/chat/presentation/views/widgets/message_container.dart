import 'package:flutter/material.dart';

import '../../../../../core/utils/styless.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    super.key,
    required this.message,
    this.color,
    this.textColor,
  });

  final String message;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width * 0.75,
      ),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.onSecondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        message,
        style: Styless.textSimeBold14.copyWith(color: textColor),
      ),
    );
  }
}