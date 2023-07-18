import '9-palindrome.dart';

String longestPalindrome(String s) {
  Map<int, String> record = {};
  int minLen = 3;
  int maxLen = s.length;
  int count = 0;

  for (int i = 0; i < maxLen; i++) {
    String testStr = '';
    for (int idx = i; idx < maxLen; idx++) {
      count += 1;
      testStr += s[idx];
      if (testStr.length >= minLen) {
        if (isPalindrome(testStr)) {
          record[count] = testStr;
        }
      }
    }
  }

  if (record.isEmpty) {
    return 'none';
  }
  String result = '';
  record.forEach((key, value) {
    if (value.length > result.length) {
      result = value;
    }
  });

  return result;
}
