import 'functions.dart';

String octalToOtherSystem(String octal, int base) {
  int decimal_of_binary = int.parse('$octal', radix: 8);
  if (base == 2)
    return decimal_of_binary.toRadixString(2);
  else if (base == 16) return decimal_of_binary.toRadixString(16);
  return decimal_of_binary.toString();
}

String octalFraction(String oct, int base) {
  return '';
}
