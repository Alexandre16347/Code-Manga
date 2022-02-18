import 'dart:ui';

import 'package:code_manga/consts/colors/colors.dart';
import 'package:code_manga/screens/cadastroPage.dart';
import 'package:code_manga/widgets/categoria.dart';
import 'package:code_manga/widgets/avatar.dart';
import 'package:code_manga/widgets/destaque.dart';
import 'package:code_manga/widgets/input.dart';
import 'package:code_manga/widgets/manga.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_manga/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(31, 31, 31, 0.9),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[KAppBar, KAppBar2]),
            ),
          ),
          title: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 4.0),
                child: Text(
                  'Manga',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'BebasNeue',
                      fontSize: 25.0),
                ),
              ),
              Text(
                'Code',
                style: TextStyle(
                    color: kprimaryColor,
                    fontFamily: 'BebasNeue',
                    fontSize: 25.0),
              ),
            ],
          ),
          actions: [],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Destaque(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25, top: 25),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Avatar(
                            text: 'One Piece',
                            url:
                                'https://sm.ign.com/ign_br/tv/o/one-piece-/one-piece-2_1xby.jpg',
                          ),
                          Avatar(
                            text: 'Naruto',
                            url:
                                'https://img.quizur.com/f/img61363627de6453.89709140.jpg?lastEdited=1630942763',
                          ),
                          Avatar(
                            text: 'Bleach',
                            url:
                                'https://sucodemanga.com.br/wp-content/uploads/2020/03/bleach.jpg',
                          ),
                          Avatar(
                            text: 'Re:Zero',
                            url:
                                'https://img.elo7.com.br/product/original/1EE36C0/big-poster-anime-re-zero-tamanho-90x-0-cm-lo003-poster.jpg',
                          ),
                          Avatar(
                              text: 'Jujutsu',
                              url:
                                  'https://trecobox.com.br/wp-content/uploads/2020/09/jujutsu-kaisen-thumb.jpg')
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Manga(
                      url:
                          'https://cdn.awsli.com.br/600x450/1777/1777555/produto/110955488f5b7abc474.jpg',
                    ),
                    Manga(
                      url:
                          'https://images-na.ssl-images-amazon.com/images/I/816m3mfx21L.jpg',
                    ),
                    Manga(
                      url:
                          'https://cidadedepapel.com.br/wp-content/uploads/2021/06/248868_520x5201.jpg',
                    ),
                    Manga(
                      url: 'https://pbs.twimg.com/media/Et0OEmzXAAAFw55.jpg',
                    ),
                    Manga(
                      url:
                          'https://a-static.mlcdn.com.br/1500x1500/manga-jujutsu-kaisen-batalha-de-feiticeiros-edicao-8-panini/ebancas/d3c647e801eb11ec97d14201ac185013/a39feaca111aa4b7178631adc11d1d4d.jpg',
                    ),
                    Manga(
                      url:
                          'https://i0.wp.com/www.otakupt.com/wp-content/uploads/2020/12/Jujutsu-Kaisen-colume-14-cover.jpg?resize=696%2C1092&ssl=1',
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Manga(
                      url:
                          'https://cdn.awsli.com.br/600x450/1777/1777555/produto/110955488f5b7abc474.jpg',
                    ),
                    Manga(
                      url:
                          'https://images-na.ssl-images-amazon.com/images/I/816m3mfx21L.jpg',
                    ),
                    Manga(
                      url:
                          'https://cidadedepapel.com.br/wp-content/uploads/2021/06/248868_520x5201.jpg',
                    ),
                    Manga(
                      url: 'https://pbs.twimg.com/media/Et0OEmzXAAAFw55.jpg',
                    ),
                    Manga(
                      url:
                          'https://a-static.mlcdn.com.br/1500x1500/manga-jujutsu-kaisen-batalha-de-feiticeiros-edicao-8-panini/ebancas/d3c647e801eb11ec97d14201ac185013/a39feaca111aa4b7178631adc11d1d4d.jpg',
                    ),
                    Manga(
                      url:
                          'https://i0.wp.com/www.otakupt.com/wp-content/uploads/2020/12/Jujutsu-Kaisen-colume-14-cover.jpg?resize=696%2C1092&ssl=1',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}