bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  int len = s.length - 1;
  String reverseStr = '';
  for (int idx = len; idx >= 0; idx--) {
    reverseStr += s[idx];
  }

  if (reverseStr == s) {
    return true;
  } else {
    return false;
  }
}
