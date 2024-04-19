import 'package:flutter/rendering.dart';
import 'package:ism/utils/grid/custom_grid_layout.dart';

class CustomGridDelegate extends SliverGridDelegate {
  CustomGridDelegate({required this.dimension});

  final double dimension;

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    int count = constraints.crossAxisExtent ~/ dimension;
    if (count < 1) {
      count = 1;
    }
    final double squareDimension = constraints.crossAxisExtent / count;
    return CustomGridLayout(
      crossAxisCount: count,
      dimension: squareDimension,
    );
  }

  @override
  bool shouldRelayout(CustomGridDelegate oldDelegate) {
    return dimension != oldDelegate.dimension;
  }
}