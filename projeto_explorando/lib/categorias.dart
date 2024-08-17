import 'package:flutter/material.dart';
import 'package:projeto_explorando/colors.dart';

class Categorias extends StatelessWidget {
  Categorias({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Altura personalizada
        child: Container(
          decoration: BoxDecoration(
            color: Branco, // Cor de fundo do AppBar
            boxShadow: [
              BoxShadow(
                color: Preto.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 7,
                offset: Offset(0, 3), // Deslocamento da sombra
              ),
            ],
          ),
          child: SafeArea(
            child: AppBar(
              title: Text(
                'Todas as categorias',
                style: TextStyle(
                    color: Preto, fontFamily: 'MontserratBold', fontSize: 19),
              ),
              backgroundColor: Colors
                  .transparent, // Deixa transparente para exibir o background customizado
              elevation: 0,
            ),
          ),
        ),
      ),
      // Fim AppBar
      backgroundColor: Branco,
      // Começo do app
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(top: 20),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
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
                        labelText: 'Pesquise categorias',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: TextStyle(
                          color: Preto,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      style: TextStyle(
                          color: Preto,
                          fontFamily: 'Montserrat',
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                          ),
                          TopicsImg(
                            imageUrl: 'assets/teatro.jpg',
                            texto: 'Teatro',
                            sub: 'Stand-ups, peças e musicais',
                          ),
                          TopicsImg(
                            imageUrl: 'assets/musica.jpg',
                            texto: 'Música',
                            sub: 'Explore a sua cultura local',
                          ),
                          TopicsImg(
                            imageUrl: 'assets/arte.jpg',
                            texto: 'Arte',
                            sub: 'Artesanato, arte de rua, pintura',
                          ),
                          TopicsImg(
                            imageUrl: 'assets/patrimonios.jpg',
                            texto: 'Patrimônios',
                            sub: 'Locais tombados e históricos',
                          ),
                          TopicsImg(
                            imageUrl: 'assets/teatro.jpg',
                            texto: 'Teatro',
                            sub: 'Stand-ups, peças e musicais',
                          ),
                          TopicsImg(
                            imageUrl: 'assets/musica.jpg',
                            texto: 'Música',
                            sub: 'Explore a sua cultura local',
                          ),
                          TopicsImg(
                            imageUrl: 'assets/arte.jpg',
                            texto: 'Arte',
                            sub: 'Artesanato, arte de rua, pintura',
                          ),
                          TopicsImg(
                            imageUrl: 'assets/patrimonios.jpg',
                            texto: 'Patrimônios',
                            sub: 'Locais tombados e históricos',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopicsImg extends StatelessWidget {
  final String imageUrl;
  final String texto;
  final String sub;

  TopicsImg({required this.imageUrl, required this.texto, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.1),
      child: GestureDetector(
        onTap: () {
          // Ação ao tocar na bolinha
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: const Text(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MontserratBold',
                      fontSize: 17,
                      //fontWeight: FontWeight.bold,
                    ),
                    'Tópico clicado'),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Fechar'))
                ],
              );
            },
          );
          print('Tópico clicado');
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Stack(
              children: [
                Image.asset(
                  imageUrl,
                  width: 360,
                  height: 130,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      texto,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'MontserratBold',
                        fontSize: 19,
                        //: FontWeight.bold,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      sub,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        //: FontWeight.bold,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
