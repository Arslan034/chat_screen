import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class User3 extends StatefulWidget {
  const User3({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
_User3State createState() => _User3State();
}

class _User3State extends State<User3> {
  List<String> messages = [];
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rik'),
        backgroundColor: const Color.fromARGB(255, 224, 248, 4),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
                'https://celes.club/uploads/posts/2022-11/1667313746_1-celes-club-p-standartnii-fon-vatsap-krasivo-1.jpg'),
                fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index){
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10
                        ),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(1, 1, 1, 1),),
                          ),
                          child: Text(
                             messages[index],
                             style: const TextStyle(
                              color:Color.fromARGB(255, 255, 255, 255),
                             ),
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
                            borderRadius: BorderRadius.circular(20),
                          ),
                          icon: const Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.white,),
                          fillColor: const Color.fromARGB(255, 224, 248, 4),
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
                        color: Colors.white
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
