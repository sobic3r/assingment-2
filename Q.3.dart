// Q.3: Given a list of integers, write a dart code that returns the maximum value
// from the list.

void main() {
  List mylist = [83, 76, 65, 90, 55];
  mylist.sort();

  print("Max value : ${mylist.last}");
}
