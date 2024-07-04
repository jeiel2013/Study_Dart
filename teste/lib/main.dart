import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: ListaContatos(
        contatos: const [
          'Rodrigo',
          'Lara',
          'Jeiel',
          'Pedro',
          'Fernanda',
          'Isabela',
        ],
      ),
    );
  }
}

class ListaContatos extends StatelessWidget {
  ListaContatos({required this.contatos});

  final List<String> contatos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contatos'),
        leading: const Icon(Icons.contact_phone),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => LinhaContato(contato: contatos[index]),
        itemCount: contatos.length,
      ),
    );
  }
}

class LinhaContato extends StatelessWidget {
  const LinhaContato({required this.contato});

  final String contato;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person_outline),
      title: Text(contato),
      trailing: Container(
        width: 60,
        child: Row(
          children: [
            Icon(Icons.edit),
            SizedBox(width: 6),
            Icon(Icons.delete),
          ],
        ),
      ),
    );
  }
}
