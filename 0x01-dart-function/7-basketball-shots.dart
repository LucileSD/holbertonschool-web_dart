int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int total2PointerA = (teamA['2 pointer'] ?? 0) * 2;
  int total3PointersA = (teamA['3 pointer'] ?? 0) * 3;
  int totalPointA =
      (teamA['Free throws'] ?? 0) + total2PointerA + total3PointersA;

  int total2PointerB = (teamB['2 pointer'] ?? 0) * 2;
  int total3PointersB = (teamB['3 pointer'] ?? 0) * 3;
  int totalPointB =
      (teamB['Free throws'] ?? 0) + total2PointerB + total3PointersB;

  if (totalPointA > totalPointB) {
    return 1;
  } else if (totalPointA < totalPointB) {
    return 2;
  } else {
    return 0;
  }
}
