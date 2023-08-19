import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class User1 extends StatelessWidget {
  const User1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bob'),
        backgroundColor: const Color.fromARGB(255, 20, 4, 238),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
                'https://phonoteka.org/uploads/posts/2021-04/1618504991_10-p-fon-dlya-messendzhera-11.jpg'),
            fit: BoxFit.cover, // для подгонки изображения к размерам контейнера
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    //Сообщения есть только в файле чат, чтобы весь код не был одинаковым.
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Введите сообщение',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          icon: const Icon(Icons.sentiment_very_satisfied,
                              color: Colors.white),
                          fillColor: const Color.fromARGB(255, 20, 4, 238),
                          filled: true,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}














