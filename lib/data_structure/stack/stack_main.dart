import 'package:data_structure_with_dart/data_structure/stack/stack.dart';

void main() {
  final stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(15);

  print(stack.isEmpty());
  print(stack.isFound(1));
  stack.display();
  stack.peek();
  stack.pop();
  stack.display();
}
