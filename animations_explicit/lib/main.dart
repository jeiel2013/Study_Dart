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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late ColorTween colorTween;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      // lowerBound: 0,
      // upperBound: 150,
    );

    // Parte não legal do código -> Substituir pelo "AnimatedBuilder"
    // _controller.addListener(() {
    //   setState(() {});
    // });

    // -> Animation Tween
    colorTween = ColorTween(
      begin: Colors.red,
      end: Colors.green,
    )..animate(
        CurvedAnimation(
          parent: _controller,
          curve: Curves.easeIn,
        ),
      );

    // -> Animation Reverse
    //_controller.repeat(reverse: true);

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

    _controller.forward(); // -> Tem q desabilitar para o "repeat" funcionar
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
        child: AnimatedBuilder(
          animation: colorTween.animate(_controller),
          builder: (context, child) => Container(
            width: 200,
            height: 200,
            //color: Colors.red,
            color: colorTween
                .evaluate(_controller), // Esse "color" é para o Animation Tween
          ),
        ),

        // Jeito antigo
        // child: Container(
        //   width: 50 + _controller.value,
        //   height: 50 + _controller.value,
        //   //color: Colors.red,
        //   color: colorTween.evaluate(_controller), // Esse "color" é para o Animation Tween
        // ),
      ),
    );
  }
}
