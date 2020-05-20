import 'package:flutter/material.dart';

class WellItemWidget extends StatelessWidget {
  final double minHeight;
  final Color backgroundColor;
  final Widget child;
  final VoidCallback onPressed;

  const WellItemWidget(
      {Key key,
      this.minHeight = 150,
      this.backgroundColor = Colors.white,
      this.child,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor),
      constraints: BoxConstraints(minHeight: minHeight),
      child: Material(
        child: Ink(
          child: InkWell(
            child: child,
            onTap: () {
              onPressed?.call();
            },
          ),
        ),
      ),
    );
  }
}
