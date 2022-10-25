import 'dart:math';

String hexaToOtherSystems(String hex, int base) {
  int decimal_of_binary = int.parse('$hex', radix: 16);
  if (base == 2)
    return decimal_of_binary.toRadixString(2);
  else if (base == 8) return decimal_of_binary.toRadixString(8);
  return decimal_of_binary.toString();
}

String decimalToOtherSystem(int decimal, int base) {
  return decimal.toRadixString(base);
}

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
