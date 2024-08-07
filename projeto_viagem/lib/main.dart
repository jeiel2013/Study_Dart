import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_viagem/locais.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                child: Image.asset("assets/img/4.jpg"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 200, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Viagens",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      " Incríveis",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 300,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView(
                children: const <Widget>[
                  Locais(local: "Londres", preco: "R\$2000,00", img: "assets/img/1.jpg",),
                  Locais(local: "Dubai", preco: "R\$300,00", img: "assets/img/2.jpg",),
                  Locais(local: "Las Vegas", preco: "R\$800,00", img: "assets/img/4.jpg",),
                  Locais(local: "Londres", preco: "R\$2000,00", img: "assets/img/1.jpg",),
                  Locais(local: "Dubai", preco: "R\$300,00", img: "assets/img/2.jpg",),
                  Locais(local: "Las Vegas", preco: "R\$800,00", img: "assets/img/4.jpg",),
                  Locais(local: "Londres", preco: "R\$2000,00", img: "assets/img/1.jpg",),
                  Locais(local: "Dubai", preco: "R\$300,00", img: "assets/img/2.jpg",),
                  Locais(local: "Las Vegas", preco: "R\$800,00", img: "assets/img/4.jpg",),
                  Locais(local: "Londres", preco: "R\$2000,00", img: "assets/img/1.jpg",),
                  Locais(local: "Dubai", preco: "R\$300,00", img: "assets/img/2.jpg",),
                  Locais(local: "Las Vegas", preco: "R\$800,00", img: "assets/img/4.jpg",),
                  Locais(local: "Londres", preco: "R\$2000,00", img: "assets/img/1.jpg",),
                  Locais(local: "Dubai", preco: "R\$300,00", img: "assets/img/2.jpg",),
                  Locais(local: "Las Vegas", preco: "R\$800,00", img: "assets/img/4.jpg",),
                  Locais(local: "Londres", preco: "R\$2000,00", img: "assets/img/1.jpg",),
                  Locais(local: "Dubai", preco: "R\$300,00", img: "assets/img/2.jpg",),
                  Locais(local: "Las Vegas", preco: "R\$800,00", img: "assets/img/4.jpg",),
                  Locais(local: "Londres", preco: "R\$2000,00", img: "assets/img/1.jpg",),
                  Locais(local: "Dubai", preco: "R\$300,00", img: "assets/img/2.jpg",),
                  Locais(local: "Las Vegas", preco: "R\$800,00", img: "assets/img/4.jpg",),
                  Locais(local: "Londres", preco: "R\$2000,00", img: "assets/img/1.jpg",),
                  Locais(local: "Dubai", preco: "R\$300,00", img: "assets/img/2.jpg",),
                  Locais(local: "Las Vegas", preco: "R\$800,00", img: "assets/img/4.jpg",),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
