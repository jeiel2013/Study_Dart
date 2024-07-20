import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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

class _MyHomePageState extends State<MyHomePage> {
  // double _opacity = 1; // Animated Opacity
  // bool animate = false; // Animated Container
  bool animate = false; // Animated CrossFaded

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height; // Animated Container
    // final width = MediaQuery.of(context).size.width; // Animated Container
    return Scaffold(
      body: Center(
        child: AnimatedCrossFade(
          firstChild:
              Icon(Icons.signal_wifi_4_bar, size: 80, color: Colors.green),
          secondChild: 
          Icon(Icons.signal_wifi_off, size: 80, color: Colors.red),
          crossFadeState:
              animate ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: Duration(milliseconds: 2000),
        ),

        // -> Animated Container
        // child: AnimatedContainer(
        //   duration: Duration(milliseconds: 2000),
        //   height: animate ? height :  50,
        //   width: animate ? width : 50,
        //   color: animate ? Colors.blue : Colors.red,
        //   curve: Curves.decelerate,
        // ),

        // -> Animated Opacity
        // child: AnimatedOpacity(
        //   opacity: _opacity, // varia de 0 a 1
        //   duration: const Duration(seconds: 1),
        //   curve: Curves.bounceIn,
        //   child: Container(
        //     height: 200,
        //     width: 200,
        //     color: Colors.red,
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // -> Animated CrossFade
            if (animate) {
              animate = false;
            } else {
              animate = true;
            }

            // -> Animated Container
            // animate = true;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
