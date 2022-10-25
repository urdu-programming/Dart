import 'binary.dart';
import 'functions.dart';

main() {
  String bin = "101010.1011011";
  int base = 10;
  print("Binary to other number system");
  if (searchFunction(bin, '.')) {
    print(binaryFraction(bin, base));
  } else {
    print(binaryToOtherSystem(bin, base));
  }
  // String oct = '52';
  // base = 10;
  // print("Octal to other number system");
  // print(octalToOtherSystem(oct, base));

  // int dec = 10;
  // base = 16;
  // print("Decimal to other number system");
  // print(decimalToOtherSystem(dec, base));

  // String hex = "A";
  // base = 10;
  // print("Decimal to other number system");
  // print(hexaToOtherSystems(hex, base));
}
