String longestUniqueSubstring(String str) {
  Map<int, String> saveSet = {};
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    String testStr = '';
    Set testString = {};
    for (int idx = i; idx < str.length; idx++) {
      count += 1;
      testStr += str[idx];
      for (int id = 0; id < testStr.length; id++) {
        testString.add(testStr[id]);
      }
      if (testStr == testString.join('')) {
        saveSet[count] = testString.join('');
      }
      testString.clear();
    }
  }
  String result = '';
  saveSet.forEach((key, value) {
    if (value.length > result.length) {
      result = value;
    }
  });
  return result;
}
