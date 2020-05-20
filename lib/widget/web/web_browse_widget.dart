import 'package:angcyo_flutter_app/angcyo_flutter_app.dart';
import 'package:easy_web_view/easy_web_view.dart';

/// 浏览网页
/// https://pub.dev/packages/easy_web_view
void browseUrl(BuildContext context, String url) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
    return WebBrowseWidget(url: url);
  }));
}

/// 打开网页
class WebBrowseWidget extends StatelessWidget {
  final String url;

  const WebBrowseWidget({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(url),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                share(url);
              })
        ],
      ),
      body: EasyWebView(
        src: url,
      ),
    );
  }
}
