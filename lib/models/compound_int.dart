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
          asString = "0,0";
        case 1:
          integerPart = int.parse(elements[0]);
          decimalPart = 0;
          asString = string_;
        case 2:
          integerPart = int.parse(elements[0]);
          decimalPart = int.parse(elements[1]);
          asString = string_;
        default:
          throw "Not a number";
      }
    } else {
      throw "Not a number";
    }
  }

  late String asString;
  late int integerPart;
  late int decimalPart;

  @override
  String toString() {
    return asString;
  }
}
