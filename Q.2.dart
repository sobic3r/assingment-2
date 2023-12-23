void main() {
//   
  // Map<String, double> mathMarks = {
  //   'ram': 30,
  //   'mark': 32,
  //   'harry': 88,
  //   'raj': 69,
  //   'john': 15,
  // };

  // mathMarks.removeWhere((key, value) => value <= 30);
  // print(mathMarks);

  // List mylist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // for (int i = mylist[0]; i <= mylist.length; i++) {
  //   if (i % 2 == 0) {
  //     print(i);
  //   }

// Q.2: remove all false values from below list by using removeWhere or 
//retainWhere property
  
  List<String> name = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];
  name.removeWhere((items) => items[0].toUpperCase() != items[0]);
  print(name);
}
