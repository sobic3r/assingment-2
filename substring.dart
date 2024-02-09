void main() {
  var str1 = "soban";
  var str2 = "furqanimranenan";
  var cOmstr = "";
  for (int i = 0; i < str1.length; i++) {
    for (int j = i + 1; j < str1.length + 1; j++) {
      var substr = str1.substring(i, j);
      if (str2.contains(substr)) {
        if (cOmstr.length < substr.length) {
          cOmstr = substr;
        }
      }
    }
  }
  print(cOmstr);
}
