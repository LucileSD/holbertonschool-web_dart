String longestUniqueSubstring(String str) {
  Set resultSet = {};
  for (int idx = 0; idx < str.length; idx++) {
    resultSet.add(str[idx]);
  }
  return resultSet.join('');
}
