// with null safety

void main() {
  print(isValidSubsequence([5, 1, 22, 6, -1, 8, 10], [1, 6, -1, 10]));
}

/** Validate Subsequence*/
bool isValidSubsequence(List<int> array, List<int> sequence) {
  if (array.length <= 0) return false;

  if (sequence.length <= 0) return false;

  bool returnable = true;
  sequence.forEach((element) {
    if (!array.contains(element)) {
      returnable = false;
    }
  });
  return returnable;
}
