
/// Validate Subsequence*/
bool isValidSubsequence(List<int> array, List<int> sequence) {
  if (array.isEmpty) return false;

  if (sequence.isEmpty) return false;

  var returnable = true;
  sequence.forEach((element) {
    if (!array.contains(element)) {
      returnable = false;
    }
  });
  return returnable;
}

int calculate() {
  return 6 * 7;
}
