class ArraysLeftRotation {
  static List<int> getLeftRotation(List<int> count, int rotation) {
    final returnable = <int>[];
    if (rotation > count.length) return null;

    for (var i = 0; i < count.length; i++) {
      returnable.add(count[rotation++]);
      if (rotation + 1 > count.length) rotation = 0;
    }
    return returnable;
  }
}
