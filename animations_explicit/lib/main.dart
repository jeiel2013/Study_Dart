import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
    void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: 0,
      upperBound: 150,
    );

    _controller.addListener(() {
      setState(() {});
    });

    // -> Reverse
    _controller.repeat(reverse: true);

    // -> Primeiro animação explicita
    // _controller.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     _controller.reverse();
    //   }
    //   // -> Animação infinita com esse elif
    //   // else if (status == AnimationStatus.dismissed) {
    //   //   _controller.forward();
    //   // }
    // });

    //_controller.forward(); // -> Tem q desabilitar para o "repeat" funcionar
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 50 + _controller.value,
          height: 50 + _controller.value,
          color: Colors.red,
        ),
      ),
    );
  }
}
