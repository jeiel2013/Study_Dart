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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  late int contadorDeCliques;

  @override
  void initState() {
    contadorDeCliques = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Você clicou no botão x vezes: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '$contadorDeCliques',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contadorDeCliques = 0;
                });
              }, 
              child: const Text('ZERAR CONTADOR', style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contadorDeCliques++;
          });
        },
        child: Icon(Icons.add),
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
