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
  // bool animate = false; // Animated CrossFaded
  final GlobalKey<AnimatedListState> listkey = GlobalKey<AnimatedListState>();
  List nomes = ['Rodrigo'];

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height; // Animated Container
    // final width = MediaQuery.of(context).size.width; // Animated Container
    // final width = MediaQuery.of(context).size.width; // Animated Postioned
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              listkey.currentState
                  ?.insertItem(0, duration: Duration(milliseconds: 500));
              setState(() {
                nomes = []
                  ..add('Teste')
                  ..addAll(nomes);
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 22),
          GestureDetector(
            onTap: () {
              listkey.currentState?.removeItem(0, (context, animation) => slideTransition(context, 0, animation),
              duration: Duration(milliseconds: 500)
              );
              setState(() {
                nomes.removeAt(0);
              });
            },
             child: const Icon(Icons.remove)
            ),
        ],
      ),
      body: SafeArea(
        child: AnimatedList(
          key: listkey,
          initialItemCount: nomes.length,
          itemBuilder: (context, index, animation) {
            return slideTransition(context, index, animation);
          },
        ),
      ),
      // body: Center(
      //   // -> Animated Positioned
      //   child: Stack(
      //     children: [
      //       AnimatedPositioned(
      //         top: 100,
      //         left: animate ? width - 50 : 0,
      //         duration: Duration(milliseconds: 500),
      //         child: Container(
      //           height: 50,
      //           width: 50,
      //           color: Colors.red,
      //         ),
      //         ),
      //         Positioned(
      //           top: 150,
      //           child: Container(
      //             color: Colors.black,
      //             width: width,
      //             height: 3,
      //           ),
      //           ),
      //       ],
      //    )
      //   ),

      //   // -> Animated CrossFade
      //   // child: AnimatedCrossFade(
      //   //   firstChild:
      //   //       const Icon(Icons.signal_wifi_4_bar, size: 80, color: Colors.green),
      //   //   secondChild: Icon(Icons.signal_wifi_off, size: 80, color: Colors.red),
      //   //   crossFadeState:
      //   //       animate ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      //   //   duration: Duration(milliseconds: 400),
      //   // ),

      //   // -> Animated Container
      //   // child: AnimatedContainer(
      //   //   duration: Duration(milliseconds: 2000),
      //   //   height: animate ? height :  50,
      //   //   width: animate ? width : 50,
      //   //   color: animate ? Colors.blue : Colors.red,
      //   //   curve: Curves.decelerate,
      //   // ),

      //   // -> Animated Opacity
      //   // child: AnimatedOpacity(
      //   //   opacity: _opacity, // varia de 0 a 1
      //   //   duration: const Duration(seconds: 1),
      //   //   curve: Curves.bounceIn,
      //   //   child: Container(
      //   //     height: 200,
      //   //     width: 200,
      //   //     color: Colors.red,
      //   //   ),
      //   // ),
      //  //),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       // -> Animated CrossFade
      //       if (animate) {
      //         animate = false;
      //       } else {
      //         animate = true;
      //       }

      //       // -> Animated Container
      //       // animate = true;
      //     });
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.remove_red_eye),
    );
    //);
  }

  // -> Animated List
  Widget slideTransition(
      BuildContext context, int index, Animation<double> animation) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: const Offset(0, 0),
      ).animate(animation),
      child: ListTile(
          title: Text(nomes[index]),
        ),
    );
  }
}
