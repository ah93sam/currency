import 'package:flutter/material.dart';

class CurrencyConverterPovider extends ChangeNotifier {
  String fromCurrency = 'usd';
  String toCurrency = 'usd';
  String result = '1';
  double value = 1;
  setFromCurrency(String value) {
    print(value);
    this.fromCurrency = value;
    calculate();
  }

  setToCurrency(String value) {
    print(value);
    this.toCurrency = value;
    calculate();
  }

  setValue(String myValue) {
    print(myValue);
    this.value = double.parse(myValue);
    calculate();
  }

  calculate() {
    this.result =
    '${currencyMap[fromCurrency] / currencyMap[toCurrency] * value}';
    notifyListeners();
    print(result);
  }
}

const Map<String, double> currencyMap = {
  'usd': 3.5,
  'nis': 1,
  'jd': 5,
  'Joneh':.5,
  'Kuwaiti dinar': 12,
};
//'USD': 3.5,
//  'EURO': 4.5,
//
//  'Nis': 1,
//  'Jordanian Dinar': 5,
//