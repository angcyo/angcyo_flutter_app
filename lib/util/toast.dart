import 'package:angcyo_flutter_app/angcyo_flutter_app.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 显示Toast
/// https://pub.dev/packages/fluttertoast
Future<bool> toast(String msg,
    {bool cancel = true,
    toastLength = Toast.LENGTH_SHORT,
    gravity = ToastGravity.BOTTOM,
    timeInSecForIosWeb = 1,
    Color backgroundColor,
    textColor = Colors.white,
    fontSize = 16.0}) async {
  if (cancel) {
    await toastCancel();
  }
  Fluttertoast.showToast(
      msg: msg,
      toastLength: toastLength,
      gravity: gravity,
      timeInSecForIosWeb: timeInSecForIosWeb,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontSize);
}

/// 取消Toast
Future<bool> toastCancel() async => Fluttertoast.cancel();
