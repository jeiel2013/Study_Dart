import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Stateless nunca muda o estado dele

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 14, 145)),
        useMaterial3: true,
      ),
      home: MeuContador(),
    );
  }
}

class MeuContador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MeuContadorState();
}

class _MeuContadorState extends State<MeuContador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você clicou no botão x vezes', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Text('0'),
          ],
        ),
      ),
    );
  }
  
}

// não modifica o estado
// class Info extends StatelessWidget {
//   Info(this.texto);

//   final String texto;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Text(texto),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.more),
//       ),
//     );
//   }
// }


// muda o estado do widget
// class Info extends StatefulWidget {
//   Info(this.texto);

//   String texto;

//   @override
//   State<Info> createState() => _InfoState();
// }

// class _InfoState extends State<Info> {
//   late String texto;

//   @override
//   void initState() {
//     texto = widget.texto;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(texto),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             texto = 'meu outro texto';
//           });
//           print(texto);
//         },
//         child: const Icon(Icons.more),
//       ),
//     );
//   }
// }
