// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hac7/screen/incident.dart';
import 'package:hac7/screen/settings.dart';
import 'package:hac7/screen/users.dart';
import 'package:hac7/screen/panel_priborov.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image.asset('assets/images/image7.png'),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Page()),
    );
  }
}
/*
  Icons.list_alt_rounded,
    Icons.message_outlined,
    Icons.line_style_rounded,
 */

class Page extends StatelessWidget {
  Page({super.key});
  final List iconi = [
    Icons.home_filled,
    Icons.people,
    Icons.report_gmailerrorred,
    Icons.settings
  ];
  final List text = [
    'Панель приборов',
    'Пользователи',
    'Инциденты',
    'Настройки',
  ];
  final List<String> pages = ['Page 1', 'Page 2', 'Page 3'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF5e53d9),
          ),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/ava_people.jpg')),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50))),
              Text(
                'Привет ESSEBA !!!',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
              itemCount: iconi.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PanelPriborov(),
                          ),
                        );
                      } else if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UsersScreen(),
                          ),
                        );
                      } else if (index == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IncidentScreen(),
                          ),
                        );
                      } else if (index == 3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingsScreen(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF5e53d9),
                          borderRadius: BorderRadius.circular(20)),
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            iconi[index],
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            text[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
