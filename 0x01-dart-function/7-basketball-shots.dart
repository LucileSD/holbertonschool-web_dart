int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  final Map<String, int> pointValues = {
    'Free Throw': 1,
    '2 pointer': 2,
    '3 pointer': 3,
  };

  int totalPointsA = 0;
  teamA.forEach((key, value) {
    if (pointValues.containsKey(key)) {
      totalPointsA += (value) * pointValues[key]!;
    }
  });

  int totalPointsB = 0;
  teamB.forEach((key, value) {
    if (pointValues.containsKey(key)) {
      totalPointsB += (value) * pointValues[key]!;
    }
  });

  if (totalPointsA > totalPointsB) {
    return 1;
  } else if (totalPointsA < totalPointsB) {
    return 2;
  } else {
    return 0;
  }
}
