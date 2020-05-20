import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

/// https://pub.dev/packages/url_launcher
launcher(
  String url, {
  bool forceSafariVC,
  bool forceWebView,
  bool enableJavaScript,
  bool enableDomStorage,
  bool universalLinksOnly,
  Map<String, String> headers,
  Brightness statusBarBrightness,
}) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: forceSafariVC,
      forceWebView: forceWebView,
      enableJavaScript: enableJavaScript,
      enableDomStorage: enableDomStorage,
      universalLinksOnly: universalLinksOnly,
      headers: headers,
      statusBarBrightness: statusBarBrightness,
    );
  } else {
    throw 'Could not launch $url';
  }
}
