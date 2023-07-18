List<double> convertToF(List<double> temperaturesInC) {
  List<double> celsius = [];
  temperaturesInC.forEach((number) {
    double calculate = (number * 9 / 5) + 32;
    celsius.add(double.parse(calculate.toStringAsFixed(2)));
  });
  return celsius;
}
