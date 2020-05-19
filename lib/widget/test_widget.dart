import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
