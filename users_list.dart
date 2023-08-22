import 'package:flutter/material.dart';
import 'chat.dart';
import 'user1.dart';
import 'user2.dart';
import 'user3.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(156, 176, 1, 167),
        title: const Text("Friend's"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
                'https://celes.club/uploads/posts/2022-11/1667313746_1-celes-club-p-standartnii-fon-vatsap-krasivo-1.jpg'),
            fit: BoxFit.cover, // для подгонки изображения к размерам контейнера
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                //user1
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 20, 4, 238)),
                    minimumSize: MaterialStateProperty.all(const Size(340, 36)),
                    alignment: Alignment.centerLeft,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const User1();
                      }),
                    );
                  },
                  icon: const Icon(Icons.account_circle),
                  label: const Text('Bob'),
                ),
                //user2
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 176, 1, 167)),
                    minimumSize: MaterialStateProperty.all(const Size(340, 36)),
                    // Выравниваем текст кнопки влево
                    alignment: Alignment.centerLeft,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const User2();
                      }),
                    );
                  },
                  icon: const Icon(Icons.account_circle),
                  label: const Text('Fred'),
                ),
                TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(
                         const Color.fromARGB(255, 224, 248, 4)),
                      minimumSize: MaterialStateProperty.all(const Size(340, 36)),
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const User3();
                        }),
                      );
                    },
                    icon: const Icon(Icons.account_circle),
                    label: const Text('Rik')),
                //chat
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 16, 226, 9)),
                    minimumSize: MaterialStateProperty.all(const Size(340, 36)),
                    // Выравниваем текст кнопки влево
                    alignment: Alignment.centerLeft,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Chat();
                      }),
                    );
                  },
                  icon: const Icon(Icons.account_circle),
                  label: const Text('Mark'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
