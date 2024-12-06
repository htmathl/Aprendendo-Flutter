import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Switch(value: AppController.instance.isDartTheme, onChanged: (value) {
          setState(() {
            AppController.instance.changeTheme();
          });
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => setState(() {
        counter++;
      }), child: const Icon(Icons.add)), 
    );
  }
}

// Conceito com Single Render
// class HomePageState extends State<HomePage> {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: Container(
//         height: 200,
//         width: 200,
//         color: Colors.black,
//         child: Align(
//           alignment: Alignment.center,
//           child: Container(
//             height: 100,
//             width: 100,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () => setState(() {
//         counter++;
//       }), child: const Icon(Icons.add)), 
//     );
//   }
// }