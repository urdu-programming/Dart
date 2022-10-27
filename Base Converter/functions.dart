import 'dart:math';

bool searchFunction(String myString, String searchValue) {
  if (myString == searchValue) {
    return true;
  }
  int count = 0;
  var searchFor = searchValue.split(" ");
  for (final searchWord in searchFor) {
    if (myString.contains(searchWord)) {
      count++;
    }
  }
  return count == searchFor.length;
}

String octalMaker(String oct) {
  if (oct.length % 3 == 0) {
    oct = oct;
  } else {
    while (oct.length % 3 != 0) {
      oct = oct + "0";
    }
  }
  return oct;
}
