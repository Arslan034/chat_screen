import 'package:flutter/material.dart';
import 'package:flutter_chat/user1.dart';
import 'package:flutter_chat/user2.dart';
import 'package:flutter_chat/user3.dart';
import 'users_list.dart';
import 'chat.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Main(),
        '/users_list': (context) => const Users(),
        '/chat': (context) => const Chat(),
        '/user1': (context) => const User1(),
        '/user2': (context) => const User2(),
        '/user3': (context) => const User3(),
      },
    ),
  );
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEwkxjPUsSOO4RzMM8QyG4hTbG6wdKAY-lJw&usqp=CAU'),
            fit: BoxFit.cover, // для подгонки изображения к размерам контейнера
          ),
        ),
        child: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'Перейти в список пользователей',
                style: TextStyle(color: Colors.white),
              ),
              TextButton.icon(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/users_list');
                },
                icon: const Icon(Icons.supervised_user_circle_sharp),
                label: const Text('Users list'),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
