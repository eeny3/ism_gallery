import 'package:flutter/rendering.dart';

class CustomGridLayout extends SliverGridLayout {
  const CustomGridLayout({
    required this.crossAxisCount,
    required this.dimension,
  });

  final int crossAxisCount;
  final double dimension;

  @override
  double computeMaxScrollOffset(int childCount) {
    if (childCount == 0 || dimension == 0) {
      return 0;
    }
    return (childCount ~/ crossAxisCount) * dimension;
  }

  @override
  SliverGridGeometry getGeometryForChildIndex(int index) {
    final int rowIndex = index ~/ crossAxisCount;
    final int columnIndex = index % crossAxisCount;
    return SliverGridGeometry(
      scrollOffset: (rowIndex * dimension),
      crossAxisOffset: columnIndex * dimension,
      mainAxisExtent: dimension,
      crossAxisExtent: dimension,
    );
  }

  @override
  int getMinChildIndexForScrollOffset(double scrollOffset) {
    final int rows = scrollOffset ~/ dimension;
    return rows * crossAxisCount;
  }

  @override
  int getMaxChildIndexForScrollOffset(double scrollOffset) {
    final int rows = scrollOffset ~/ dimension;
    final int count = rows * crossAxisCount;

    return count + crossAxisCount - 1;
  }
}