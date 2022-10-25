import 'binary.dart';
import 'functions.dart';

String octalToOtherSystem(String octal, int base) {
  int decimal_of_binary = int.parse('$octal', radix: 8);
  if (base == 2)
    return decimal_of_binary.toRadixString(2);
  else if (base == 16) return decimal_of_binary.toRadixString(16);
  return decimal_of_binary.toString();
}

String octalFraction(String oct, int base) {
  String octFraction = oct.substring(oct.indexOf('.') + 1, oct.length);
  String bin = "";
  oct = oct.substring(0, oct.indexOf('.'));
  print(oct);
  for (var i = 0; i < octFraction.length; i++) {
    bin += int.parse(octFraction[i], radix: 8).toRadixString(2).padLeft(3, '0');
  }
  while (bin[bin.length - 1] != '1') {
    bin = bin.substring(0, bin.length - 1);
  }
  print(binaryFraction(octalToOtherSystem(oct, 2) + '.' + bin, base));
  return "";
}
