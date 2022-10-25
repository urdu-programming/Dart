import 'dart:math';

import 'functions.dart';

String binaryToOtherSystem(String binary, int base) {
  int decimal_of_binary = int.parse('$binary', radix: 2);
  if (base == 8)
    return decimal_of_binary.toRadixString(8);
  else if (base == 16) return decimal_of_binary.toRadixString(16).toUpperCase();
  return decimal_of_binary.toString();
}

String binaryFraction(String binary, int base) {
  String binaryFraction =
      binary.substring(binary.indexOf('.') + 1, binary.length);
  String bin = binary.substring(0, binary.indexOf('.'));
  double num = 0.0;
  if (base == 10) {
    for (int i = 1; i <= binaryFraction.length; i++) {
      if (binaryFraction[i - 1] == '0') {
        continue;
      } else {
        num = pow(1 / 2, i) + num;
      }
    }
  } else if (base == 8) {
    String octa = "";
    binaryFraction = octalMaker(binaryFraction);
    for (int i = 0; i < binaryFraction.length; i += 3) {
      octa += binaryToOtherSystem(binaryFraction.substring(i, i + 3), 10);
    }
    return binaryToOtherSystem(bin, base) + '.' + octa;
  } else if (base == 16) {
    String hexa = "";
    if (binaryFraction.length % 4 == 0) {
      binaryFraction = binaryFraction;
    } else {
      while (binaryFraction.length % 4 != 0) {
        binaryFraction = binaryFraction + "0";
      }
    }
    for (int i = 0; i < binaryFraction.length; i += 4) {
      hexa += int.parse(
              binaryToOtherSystem(binaryFraction.substring(i, i + 4), 10),
              radix: 10)
          .toRadixString(16)
          .toUpperCase();
    }
    return binaryToOtherSystem(bin, base) + '.' + hexa;
  }

  String nums = num.toString();
  return binaryToOtherSystem(bin, base) +
      nums.substring(nums.indexOf('.'), nums.length);
}
