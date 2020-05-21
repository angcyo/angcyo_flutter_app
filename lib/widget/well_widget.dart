import 'package:angcyo_flutter_app/angcyo_flutter_app.dart';
import 'package:flutter/material.dart';

class WellItemWidget extends StatelessWidget {
  final double minHeight;
  final Color backgroundColor;
  final Widget child;
  final VoidCallback onPressed;

  const WellItemWidget(
      {Key key,
      this.minHeight = 50,
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
            child: Container(
              alignment: Alignment.centerLeft,
              child: child,
            ),
            onTap: () {
              onPressed?.call();
            },
          ),
        ),
      ),
    );
  }
}

class WhiteListTile extends ListTile {
  final Color backgroundColor;

  WhiteListTile({
    Key key,
    this.backgroundColor = Colors.white,
    Widget leading,
    Widget title,
    Widget subtitle,
    Widget trailing,
    isThreeLine = false,
    bool dense,
    EdgeInsetsGeometry contentPadding,
    bool enabled = true,
    GestureTapCallback onTap,
    GestureLongPressCallback onLongPress,
    bool selected = false,
  }) : super(
            key: key,
            leading: leading,
            title: title,
            subtitle: subtitle,
            trailing: trailing,
            isThreeLine: isThreeLine,
            dense: dense,
            contentPadding: contentPadding,
            enabled: enabled,
            onTap: onTap,
            onLongPress: onLongPress,
            selected: selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: super.build(context),
    );
  }
}
