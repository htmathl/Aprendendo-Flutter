class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitCoin;

  CurrencyModel({
    required this.name,
    required this.real,
    required this.dolar,
    required this.euro,
    required this.bitCoin,
  });

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.17, euro: 0.16, bitCoin: 0.0000016
      ),
      CurrencyModel(
          name: 'Dolar', real: 6.03, dolar: 1.0, euro: 0.95, bitCoin: .00000990
      ),
      CurrencyModel(
          name: 'Euro', real: 6.32, dolar: 1.05, euro: 1.0, bitCoin: 0.000010
      ),
      CurrencyModel(
          name: 'BitCoin', real: 596119.95, dolar: 99344.33, euro: 94946.41, bitCoin: 1.0
      ),
    ];
  }
}
