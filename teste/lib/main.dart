import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    print('executando metodo build MyApp');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 231, 0, 135)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo Page Jeiel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listaNomes = [
      'Rodrigo',
      'Paulo',
      'Joana',
      'Rafael',
      'Felipe',
      'Lara',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.person),
          title: Text(listaNomes[index]),
          trailing: Container(
            width: 60,
            child: Row(
              children: [
                Icon(Icons.edit),
                SizedBox(width: 4),
                Icon(Icons.delete),
              ],
            ),
          ),
        ),
        itemCount: listaNomes.length,
        ),
      // body: Center(
      //   child: Column(children: [
      //     const Text('Meus dois containers vermelhos!',
      //         style: TextStyle(
      //           fontSize: 22,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.red,
      //         )),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Container(height: 80, width: 80, color: Colors.red),
      //         const SizedBox(width: 12),
      //         Container(height: 80, width: 80, color: Colors.red)
      //       ],
      //     ),
      //     SizedBox(height: 50),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Icon(Icons.access_alarm, size: 48, color: Colors.blue),
      //         Icon(Icons.account_circle, size: 60, color: Colors.red),
      //       ],
      //     )
      //   ]),
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
