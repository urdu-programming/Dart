import 'binary.dart';
import 'decimal.dart';
import 'functions.dart';
import 'hexadecimal.dart';
import 'octal.dart';

main() {
  String bin = "1010.1010";
  int base = 8;
  print("Binary to other number system");
  if (searchFunction(bin, '.')) {
    print(binaryFraction(bin, base));
  } else {
    print(binaryToOtherSystem(bin, base));
  }

  String oct = '34.64';
  base = 16;
  print("Octal to other number system");
  if (searchFunction(oct, '.')) {
    print(octalFraction(oct, base));
  } else {
    print(octalToOtherSystem(oct, base));
  }

  String dec = "10.3";
  base = 16;
  print("Decimal to other number system");
  if (searchFunction(dec, '.')) {
    print(decimalFraction(dec, base));
  } else
    print(decimalToOtherSystem(dec, base));

  String hex = "A.A123";
  base = 10;
  print("Decimal to other number system");
  if (!searchFunction((hex), '.')) {
    print("Umiar");
    print(hexaToOtherSystems(hex, base));
  } else
    print(hexaFraction(hex, base));
}
