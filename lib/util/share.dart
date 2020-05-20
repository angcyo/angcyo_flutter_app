import 'dart:ui';

import 'package:share/share.dart';

Future<void> share(
  String text, {
  String subject,
  Rect sharePositionOrigin,
}) {
  Share.share(text, subject: subject, sharePositionOrigin: sharePositionOrigin);
}
