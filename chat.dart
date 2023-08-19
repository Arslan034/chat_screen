import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mark'),
        backgroundColor: const Color.fromARGB(255, 16, 226, 9),
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
                  children: const [
                    MessageBubble(text: 'Привет!', fon: false),
                    MessageBubble(text: 'Hello', fon: true),
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
                          fillColor: const Color.fromARGB(255, 16, 226, 9),
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

class MessageBubble extends StatelessWidget {
  final String text;
  final bool fon;

  const MessageBubble({super.key, required this.text, required this.fon});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: fon ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: fon ? Colors.green : Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
