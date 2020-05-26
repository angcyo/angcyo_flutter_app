import 'package:flutter/material.dart';

/// 默认动画过渡时长, 毫秒
const int DEFAULT_TRANSITION_MILLISECONDS = 500;

/// 页面启动动画, 从右到左
class Right2LeftRouter<T> extends SlideTransitionRouter<T> {
  Right2LeftRouter({
    @required Widget targetPage,
    Duration duration,
    int milliseconds = DEFAULT_TRANSITION_MILLISECONDS,
    Curve curve = Curves.fastOutSlowIn,
  }) : super(
          targetPage: targetPage,
          duration: duration,
          milliseconds: milliseconds,
          curve: curve,
          begin: Offset(1.0, 0),
          end: Offset(0.0, 0),
        );
}

class Left2RightRouter<T> extends SlideTransitionRouter<T> {
  Left2RightRouter({
    @required Widget targetPage,
    Duration duration,
    int milliseconds = DEFAULT_TRANSITION_MILLISECONDS,
    Curve curve = Curves.fastOutSlowIn,
  }) : super(
          targetPage: targetPage,
          duration: duration,
          milliseconds: milliseconds,
          curve: curve,
          begin: Offset(-1.0, 0),
          end: Offset(0.0, 0),
        );
}

class Bottom2UpRouter<T> extends SlideTransitionRouter<T> {
  Bottom2UpRouter({
    @required Widget targetPage,
    Duration duration,
    int milliseconds = DEFAULT_TRANSITION_MILLISECONDS,
    Curve curve = Curves.fastOutSlowIn,
  }) : super(
          targetPage: targetPage,
          duration: duration,
          milliseconds: milliseconds,
          curve: curve,
          begin: Offset(0.0, 1.0),
          end: Offset(0.0, 0.0),
        );
}

class SlideTransitionRouter<T> extends BaseTransitionRouter<T> {
  SlideTransitionRouter({
    @required Widget targetPage,
    Duration duration,
    int milliseconds = DEFAULT_TRANSITION_MILLISECONDS,
    Curve curve = Curves.fastOutSlowIn,
    Offset begin = const Offset(1.0, 0.0),
    Offset end = const Offset(0.0, 0.0),
  }) : super(
          targetPage: targetPage,
          duration: duration,
          milliseconds: milliseconds,
          curve: curve,
          transitionsBuilder: (ctx, a1, a2, child) {
            return SlideTransition(
              position: Tween(begin: begin, end: end).animate(
                CurvedAnimation(
                  parent: a1,
                  curve: curve,
                ),
              ),
              child: child,
            );
          },
        );
}

class BaseTransitionRouter<T> extends PageRouteBuilder<T> {
  /// 需要启动的目标
  final Widget targetPage;

  /// 页面过渡时间
  final Duration duration;

  /// 快速设置时间, 毫秒
  final int milliseconds;

  /// 动画差值器
  final Curve curve;

  BaseTransitionRouter({
    @required this.targetPage,
    @required RouteTransitionsBuilder transitionsBuilder,
    this.duration,
    this.milliseconds = DEFAULT_TRANSITION_MILLISECONDS,
    this.curve = Curves.fastOutSlowIn,
  })  : assert(milliseconds != null || duration != null),
        super(
          pageBuilder: (ctx, a1, a2) => targetPage,
          transitionDuration: milliseconds != null
              ? Duration(milliseconds: milliseconds)
              : duration,
          transitionsBuilder: transitionsBuilder,
        );
}
