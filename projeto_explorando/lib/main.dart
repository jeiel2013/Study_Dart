import 'package:flutter/material.dart';
import 'package:projeto_explorando/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Branco,
      body: Stack(
        children: [
          // Conteúdo rolável
          ListView(
            padding: EdgeInsets.only(
                top: 80), // Ajusta o padding para não sobrepor a barra fixa
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                // Espaço
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 222, 222),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(16),
                              labelText: 'Pesquise espaços e eventos',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(
                                color: Preto,
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              )),
                          style: TextStyle(
                              color: Preto,
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 75, left: 20)),
                            StoryCircle(imageUrl: 'assets/S1.jpg'),
                            StoryCircle(imageUrl: 'assets/S2.jpg'),
                            StoryCircle(imageUrl: 'assets/S3.jpg'),
                            StoryCircle(imageUrl: 'assets/S4.jpg'),
                            StoryCircle(imageUrl: 'assets/S5.jpg'),
                            StoryCircle(imageUrl: 'assets/S6.jpg'),
                            StoryCircle(imageUrl: 'assets/S7.jpg'),
                            StoryCircle(imageUrl: 'assets/S8.jpg'),
                            StoryCircle(imageUrl: 'assets/S9.jpg'),
                            StoryCircle(imageUrl: 'assets/S10.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Container fixo na parte superior
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(bottom: 14),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                color: Branco,
                boxShadow: [
                  BoxShadow(
                    color: Preto.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14, top: 32),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_rounded),
                      iconSize: 30,
                      color: Laranja,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StoryCircle extends StatelessWidget {
  final String imageUrl;

  StoryCircle({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          // Ação ao tocar na bolinha
          print('Story clicado');
        },
        child: CircleAvatar(
          radius: 25, // Define o tamanho da bolinha
          backgroundImage: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
