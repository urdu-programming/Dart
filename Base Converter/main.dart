import 'binary.dart';
import 'functions.dart';
import 'octal.dart';

main() {
  // String bin = "11100.1101";
  int base = 10;
  // print("Binary to other number system");
  // if (searchFunction(bin, '.')) {
  //   print(binaryFraction(bin, base));
  // } else {
  //   print(binaryToOtherSystem(bin, base));
  // }

  String oct = '34.64';
  base = 16;
  print("Octal to other number system");
  if (searchFunction(oct, '.')) {
    print(octalFraction(oct, base));
  } else {
    print(octalToOtherSystem(oct, base));
  }

  // int dec = 10;
  // base = 16;
  // print("Decimal to other number system");
  // print(decimalToOtherSystem(dec, base));

  // String hex = "A";
  // base = 10;
  // print("Decimal to other number system");
  // print(hexaToOtherSystems(hex, base));
}
