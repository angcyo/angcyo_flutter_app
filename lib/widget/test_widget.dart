import 'package:angcyo_flutter_app/angcyo_flutter_app.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    info('TestWidget build : $this ${DateTime.now()}');
    return Center(
      child: Column(
        children: <Widget>[
          Text("${context.hashCode} $context"),
          Builder(builder: (ctx) {
            return Text('${ctx.hashCode} $ctx');
          })
        ],
      ),
    );
  }
}
