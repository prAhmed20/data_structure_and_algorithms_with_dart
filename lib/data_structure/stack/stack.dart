class Stack<E> {
  Stack() : _storage = [];

  final List _storage;

  push(element) {
    return _storage.add(element);
  }

  pop() {
    return _storage.removeLast();
  }

  void display() {
    print(_storage);
  }

  peek() {
    int length = _storage.length;
    int lastIndex = length - 1;
    print(_storage[lastIndex]);
  }

  bool isEmpty() {
    if (_storage.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool? isFound(element) {
    int length = _storage.length;
    for (int i = 0; i < length; i++) {
      if (element == _storage[i]) {
        return true;
      } else {
        return false;
      }
    }
  }
}
