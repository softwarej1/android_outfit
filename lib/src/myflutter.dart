// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_outfit/src/ui/home.dart';
import 'package:flutter_outfit/src/ui/likes.dart';
import 'package:flutter_outfit/src/ui/login.dart';
import 'package:flutter_outfit/src/ui/store.dart';

// ignore: camel_case_types
class myflutter extends StatefulWidget {
  const myflutter({super.key});

  @override
  State<myflutter> createState() => _myflutterState();
}

// ignore: camel_case_types
class _myflutterState extends State<myflutter> {
  var _index = 1;

  // ignore: prefer_final_fields
  List<Widget> _pages = [
    const likes(),
    const home(),
    const store(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘 뭐 입지?'),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 228, 199),
        foregroundColor: Colors.black,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              icon: const Icon(Icons.account_circle_rounded))
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(
            () {
              _index = value;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: 'likes'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'mypage'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'store'),
        ],
      ),
    );
  }
}
