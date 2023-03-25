// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hac7/card/card_pp.dart';

class PanelPriborov extends StatelessWidget {
  const PanelPriborov({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.home),
            )
          ],
          centerTitle: true,
          backgroundColor: Color(0xFF5e53d9),
          title: Text(
            'Панель приборов',
          ),
        ),
        body: Container(
          color: Colors.blueGrey[100],
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardPP(
                      text1: 'Общий',
                      text2: 'Категории',
                      text3: '7',
                    ),
                    CardPP(
                      text1: 'Открыть',
                      text2: 'Инциденты',
                      text3: '8',
                    ),
                    CardPP(
                      text1: 'Закрыто',
                      text2: 'Инциденты',
                      text3: '1',
                    ),
                    CardPP(
                      text1: 'Общий',
                      text2: 'Менеджеры',
                      text3: '2',
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                // width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Инциденты по категорию',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/diagram.PNG'))),
              )
            ],
          ),
        ));
  }
}
