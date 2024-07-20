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
  double _opacity = 1;
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          height: animate ? height :  50,
          width: animate ? width : 50,
          color: animate ? Colors.blue : Colors.red,
          curve: Curves.decelerate,
        ),
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
            animate = true;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
