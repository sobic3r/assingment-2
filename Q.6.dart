//Q.6: Map<String, double> mathMarks = {
//   'ram': 30,
//   'mark': 32,
//   'harry': 88,
//   'raj': 69,
//   'john': 15,
// };

// Using ".removeWhere()" method remove key, value where value <= 30 then print
//the updated map mathMarks variable.

void main() {
  Map<String, double> mathMarks = {
    'ram': 30,
    'mark': 32,
    'harry': 88,
    'raj': 69,
    'john': 15,
  };

  mathMarks.removeWhere((key, value) => value <= 30);
  print(mathMarks);
}
