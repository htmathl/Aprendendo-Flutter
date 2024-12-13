import 'package:conversor_moedas/app/components/currency_widget.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late final HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200,
                height: 200,
              ),
              CurrencyWidget(
                items: homeController.currencies,
                onChanged: (CurrencyModel model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                },
                controller: toText,
                selectedItem: homeController.toCurrency,
              ),
              const SizedBox(height: 10),
              CurrencyWidget(
                items: homeController.currencies,
                onChanged: (CurrencyModel model) {
                  setState(() {
                    homeController.fromCurrency = model;
                  });
                },
                controller: fromText,
                selectedItem: homeController.fromCurrency,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.amber),
                  foregroundColor:
                      WidgetStateProperty.all<Color>(Colors.black87),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                child: const Text("Converter"),
                onPressed: () {
                  homeController.convert();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
