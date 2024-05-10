import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class NotificationToast extends StatelessWidget {
  const NotificationToast({
    super.key,
    required this.message,
    this.needShowSmile = false,
    this.color,
    this.onPressed,
    this.emoji = '😊',
  });

  final String message;
  final Color? color;
  final bool needShowSmile;
  final VoidCallback? onPressed;
  final String emoji;

  // TODO: customize toast

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.only(
            top: 14,
            left: 16,
            right: 16,
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
          decoration: BoxDecoration(
            color: color ?? const Color.fromARGB(255, 122, 23, 46),
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              onPressed?.call();
              OverlaySupportEntry.of(context)?.dismiss();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    message,
                    style: const TextStyle(
                          fontFamily: 'Gotham Pro',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                  ),
                ),
                if (needShowSmile)
                  RichText(
                    text: TextSpan(
                      text: emoji,
                      style: const TextStyle(
                            // fontFamily: 'Gotham Pro',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
