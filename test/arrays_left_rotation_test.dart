import 'package:data_structure/arrays_left_rotation.dart';
import 'package:test/test.dart';

void main() {
  test('Arrays left rotation test', () {
    expect(ArraysLeftRotation.getLeftRotation([10, 20, 30, 40, 50], 4),
        [50, 10, 20, 30, 40]);
  });
}
