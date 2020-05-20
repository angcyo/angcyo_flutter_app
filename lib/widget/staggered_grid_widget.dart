import 'package:angcyo_flutter_app/angcyo_flutter_app.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

export 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

/// https://pub.dev/packages/flutter_staggered_grid_view
class StaggeredGrid {
  static StaggeredGridView countBuilder({
    @required IndexedWidgetBuilder itemBuilder, //构建 item
    @required IndexedStaggeredTileBuilder staggeredTileBuilder, //构建item 占用的空间
    int crossAxisCount = 2, //交叉轴的列数, 比如竖向有多少列
    Key key,
    Axis scrollDirection: Axis.vertical,
    bool reverse: false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap: false,
    EdgeInsetsGeometry padding,
    int itemCount,
    double mainAxisSpacing: 0.0,
    double crossAxisSpacing: 0.0,
    bool addAutomaticKeepAlives: true,
    bool addRepaintBoundaries: true,
  }) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: crossAxisCount,
      itemBuilder: itemBuilder,
      staggeredTileBuilder: staggeredTileBuilder,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics ??
          AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      shrinkWrap: shrinkWrap,
      padding: padding,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      itemCount: itemCount,
      mainAxisSpacing: mainAxisSpacing,
      crossAxisSpacing: crossAxisSpacing,
    );
  }
}
