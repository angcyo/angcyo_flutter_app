import 'package:flutter/material.dart';

export './flow/my_flow_widget.dart';
export './web/web_browse_widget.dart';
export 'staggered_grid_widget.dart';
export 'test_widget.dart';
export 'well_widget.dart';

/// 下拉回弹滚动物理学
ScrollPhysics absPhysics =
    AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics());
