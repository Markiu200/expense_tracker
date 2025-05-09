class CompoundInt {
  CompoundInt.fromString(String string) {
    final String string_ = string.replaceAll(RegExp(r'\.'), ',');
    double? parsedDouble = double.tryParse(string_);
    if (parsedDouble != null) {
      final List<String> elements = string_.split(',');
      switch (elements.length) {
        case 0:
          integerPart = 0;
          decimalPart = 0;
        case 1:
          integerPart = int.parse(elements[0]);
          decimalPart = 0;
        case 2:
          integerPart = int.parse(elements[0]);
          decimalPart = int.parse(elements[1]);
        default:
          throw "Not a number";
      }
    } else {
      throw "Not a number";
    }
  }

  late int integerPart;
  late int decimalPart;
}
