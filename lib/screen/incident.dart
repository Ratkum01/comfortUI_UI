import 'package:flutter/material.dart';
import 'package:hac7/card/card_inc.dart';
import 'package:hac7/utils/myappbar.dart';

class IncidentScreen extends StatelessWidget {
  const IncidentScreen({super.key});

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
          'Инциденты',
        ),
      ),
      body: Column(
        children: [
          IncCard(
            idinc: '154115',
            name: 'Max',
            email: 'join@mail.ru',
            kategory: 'отопление',
          ),
          IncCard(
            idinc: '154115',
            name: 'Max',
            email: 'join@mail.ru',
            kategory: 'отопление',
          ),
          IncCard(
            idinc: '154115',
            name: 'Max',
            email: 'join@mail.ru',
            kategory: 'отопление',
          ),
          IncCard(
            idinc: '154115',
            name: 'Max',
            email: 'join@mail.ru',
            kategory: 'отопление',
          ),
          IncCard(
            idinc: '154115',
            name: 'Max',
            email: 'join@mail.ru',
            kategory: 'отопление',
          ),
          IncCard(
            idinc: '154115',
            name: 'Max',
            email: 'join@mail.ru',
            kategory: 'отопление',
          ),
        ],
      ),
    );
  }
}
