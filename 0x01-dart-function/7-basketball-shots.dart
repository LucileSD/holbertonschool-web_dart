int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int index = 0;
  int totalPointsA = 0;
  teamA.forEach((key, value) {
    index += 1;
    totalPointsA += value * index;
  });

  index = 0;
  int totalPointsB = 0;
  teamB.forEach((key, value) {
    index += 1;
    totalPointsB += value * index;
  });

  if (totalPointsA > totalPointsB) {
    return 1;
  } else if (totalPointsA < totalPointsB) {
    return 2;
  } else {
    return 0;
  }
}
