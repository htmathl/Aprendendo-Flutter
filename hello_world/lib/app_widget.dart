import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter_application_1/home_page.dart';

class AppWidget extends StatelessWidget {
  //necessário instanciar o construtor da classe pai
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(primarySwatch: Colors.purple, brightness: AppController.instance.isDartTheme ? Brightness.dark : Brightness.light),
            home: const HomePage(),
          );
        });
  }
}
