void selectionSort(List list) {
  for (int i = 0; i < list.length; i++) {
    int minn = list[i];
    int minnIndex = i;
    for (int j = i + 1; j < list.length; j++) {
      if (minn > list[j]) {
        minn = list[j];
        minnIndex = j;
      }
    }
    swap(list, i, minnIndex);
  }
}

void swap(List list, int i, int j) {
  int tmp = list[i];
  list[i] = list[j];
  list[j] = tmp;
}

void main() {
  List arrays = [80, 17, 45, 1, 3, 5, 7, 8];
  selectionSort(arrays); // [1, 3, 5, 7, 8, 17, 45, 80]
  print(arrays);
}
