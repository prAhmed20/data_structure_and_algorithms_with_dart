void main() {
  printing();
}

int count = 0;
void printing() {
  count++;
  // any recursive methode must have a base case to avoid stack memory exp
  if (count < 5) // base case
  {
    print('recursion');
    printing();
  }
}
