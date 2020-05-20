import 'dart:ui';

import 'package:share/share.dart';

/// https://pub.dev/packages/share
Future<void> share(
  String text, {
  String subject,
  Rect sharePositionOrigin,
}) {
  Share.share(text, subject: subject, sharePositionOrigin: sharePositionOrigin);
}
