import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  late CurrencyModel fromCurrency;
  late CurrencyModel toCurrency;

  final TextEditingController toText;
  final TextEditingController fromText;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1;
    double returnValue = 0;

    if( fromCurrency.name == 'Real' ) {
      returnValue = value * toCurrency.real;
    } else if ( fromCurrency.name == 'Dolar' ) {
      returnValue = value * toCurrency.dolar;
    } else if ( fromCurrency.name == 'Euro' ) {
      returnValue = value * toCurrency.euro;
    } else if ( fromCurrency.name == "BitCoin" ) {
      returnValue = value * toCurrency.bitCoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}