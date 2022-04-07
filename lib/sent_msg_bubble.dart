import 'package:flutter/material.dart';
import 'package:irecognize/components/custom_shape.dart';
import 'package:irecognize/utils/theme.dart';

class SentMsgBubble extends StatelessWidget {
  const SentMsgBubble({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
        CustomPaint(painter: CustomShape((colorScheme.primary)!)),
      ],
    ));
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 50, top: 15, bottom: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        const SizedBox(height: 30),
        messageTextGroup,
      ]),
    );
  }
}
