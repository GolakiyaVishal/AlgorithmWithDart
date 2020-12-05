import 'package:data_structure/arrays_left_rotation.dart';
import 'package:data_structure/data_structure.dart' as data_structure;
import 'package:data_structure/data_structure.dart';
import 'package:data_structure/linked_list.dart';

void main(List<String> arguments) {
  // print('Hello world: ${data_structure.calculate()}!');

  // print(isValidSubsequence([5, 1, 22, 6, -1, 8, 10], [1, 6, -1, 10]));

/*   var list = middle();
  list.addLast(Node(10));
  list.addLast(Node(20));
  list.addLast(Node(30));
  list.addLast(Node(40));
  list.reversList();
  list.printList();
  print(list.getKthNode(0));
  list.getMiddleOfLIst();
  print(list.hasLoop());
 */

  /** Arrays left rotation */
  final result = ArraysLeftRotation.getLeftRotation([1, 2, 3, 4, 5, 6], 7);
  print('left rotate $result');
}
