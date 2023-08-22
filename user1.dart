import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class User1 extends StatefulWidget {
  const User1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _User1State createState() => _User1State();
}

class _User1State extends State<User1> {
  List<String> messages = [];
  final TextEditingController _messageController = TextEditingController();

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
                'https://celes.club/uploads/posts/2022-11/1667313746_1-celes-club-p-standartnii-fon-vatsap-krasivo-1.jpg'),
            fit: BoxFit.cover, // для изображения к размерам контейнера
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue, //фон сообщения
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: const Color.fromARGB(0, 0, 0, 0)
                              ), //обводка сообщения
                        ),
                        child: Text(
                          messages[index],
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)
                              ), //цвет текста
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                          hintText: 'Сообщение',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          icon: const Icon(
                            Icons.sentiment_very_satisfied,
                              color: Colors.white),
                          fillColor: const Color.fromARGB(255, 7, 88, 238),
                          filled: true,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (_messageController.text.isNotEmpty) {
                          setState(() {
                            messages.add(_messageController.text);
                            _messageController.clear();
                          });
                        }
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
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
