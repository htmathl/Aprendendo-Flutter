import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_widget.dart';

main() {
  runApp( const AppWidget() );
}

// Uso do statefulWidget
// capaz de alterar o estado da aplicação
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() {
//     return HomePageState();
//   }
// }

// class HomePageState extends State<HomePage> {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Center(child: GestureDetector(child: Text('Auau! $counter'), onTap: () => setState(() {
//           counter++;
//         }))),
//       );
//   }

// }

// Uso do MaterialApp
// class AppWidget extends StatelessWidget {

//   final String title;

//   //necessário instanciar o construtor da classe pai
//   const AppWidget({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.purple),
//       home: Container(
//         child: Center(child: Text(title),),
//       ),
//     );
//   }
// }

// Uso do StatelessWidget
// class AppWidget extends StatelessWidget {

//   final String title;

//   //necessário instanciar o construtor da classe pai
//   const AppWidget({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text(
//           title,
//           textDirection: TextDirection.ltr,
//           style: const TextStyle(
//             color: Colors.purple,
//             fontSize: 30,
//           ),
//         ),
//       ),
//     );
//   }
// }