import 'package:data_structure_with_dart/data_structure/linked_list/node.dart';

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  // Pushing to the Front of a List
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

// Pushing to the last of a List
  void append(E value) {
    // check if list is empty or no .. if its empty .. push value .. head is the same of tail
    if (isEmpty) {
      push(value);
      return;
    }

    // if its not empty .. we add node is last
    tail!.next = Node(value: value);

    tail = tail!.next;
  }

  // Inserting in Middle of a List
  Node<E>? nodeAt(int index) {
    // 1
    var currentNode = head;
    var currentIndex = 0;
    // 2
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  // Inserting node after another node in a List
  Node<E> insertAfter(Node<E> node, E value) {
    // 1
    if (tail == node) {
      append(value);
      return tail!;
    }
    // 2
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }
}
