void main(){
  //   Q6. Write a program to make such a
// pattern like a right angle triangle with a number which will repeat a number in
// a row. The pattern like :

//  1

//  22

//  333

//  4444

  int a = 1;
  for (var i = 0; i < 4; i++) {
    var s = "";
    for (var j = 0; j < a; j++) {
      s+=a.toString();
    }
    print("$s");
    a++;
  }
}