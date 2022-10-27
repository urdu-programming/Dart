import 'binary.dart';

String decimalToOtherSystem(String decimal, int base) {
  return int.parse(decimal, radix: 10).toRadixString(base);
}

String decimalFraction(String decimal, int base) {
  String fraction = decimal.substring(decimal.indexOf('.'), decimal.length);
  String whole = decimal.substring(0, decimal.indexOf('.'));
  double frac = double.parse(fraction);
  String fracStr = "";
  String binDig = "";
  do {
    frac = frac * 2;
    // print(frac);
    fracStr = frac.toString();
    frac =
        double.parse(fracStr.substring(fracStr.indexOf('.'), fracStr.length));
    binDig += fracStr.substring(0, fracStr.indexOf('.'));
    if (binDig.length == 10) {
      break;
    }
  } while (frac != 0);
  String binWhole = int.parse(whole).toRadixString(2);
  String binDeci = binWhole + '.' + binDig;

  return binaryFraction(binDeci, base);
}
