import 'package:flutter/material.dart';
import 'package:tela_login/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  CustomSwitch cs = const CustomSwitch();

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [
          CustomSwitch(),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start, alinhamento dos items no eixo x

          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Contador: $counter'),
                    cs,
                  ],
                ),
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
                cs,
                Text('Contador: $counter'),
              ],
            ),
            cs,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          counter++;
        }),
        foregroundColor: colorScheme.onSecondaryContainer,
        backgroundColor: colorScheme.secondaryContainer,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          setState(() {
            AppController.instance.changeTheme();
          });
        });
  }
}

//Gerenciando estados
// class HomePageState extends State<HomePage> {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: Center(
//         child: Switch(value: AppController.instance.isDartTheme, onChanged: (value) {
//           setState(() {
//             AppController.instance.changeTheme();
//           });
//         }),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () => setState(() {
//         counter++;
//       }), child: const Icon(Icons.add)), 
//     );
//   }
// }

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