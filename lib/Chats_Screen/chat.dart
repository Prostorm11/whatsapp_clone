import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Chats_Screen/chat_plate.dart';

enum MenuAction { logout }

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool allpressed=true;
  bool unreadpressed=false;
  bool favouritespressed=false;
  bool groupspressed=false;

  void _pressedchange( ){
    setState(() {
      allpressed=false;
      unreadpressed=false;
      favouritespressed=false;
      groupspressed=false;
      //button=true;

    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton<MenuAction>(
          onSelected: (value) {},
          itemBuilder: (context) {
            return const [
              PopupMenuItem<MenuAction>(
                value: MenuAction.logout,
                child: Text("Logout"),
              ),
            ];
          },
        ),
        actions: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
              child: Icon(Icons.camera_alt)),
          Container(
              decoration: const BoxDecoration(
                  color: Colors.green, shape: BoxShape.circle),
              margin: const EdgeInsets.fromLTRB(0, 0, 9, 0),
              child: const Icon(Icons.add_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
        child: SingleChildScrollView(
          child: FractionallySizedBox(
            widthFactor: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Chats",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                FractionallySizedBox(
                  widthFactor: 0.95,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Ask Meta AI or Search",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _pressedchange();
                            setState(() {
                              allpressed=true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                             backgroundColor:allpressed? Colors.green:null,
                            padding: const EdgeInsets.symmetric(
                                 horizontal: 15, vertical: 7.5),
                            minimumSize: Size.zero,
                          ),
                          child: const Text(
                            "All",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _pressedchange();
                            setState(() {
                              unreadpressed=true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:unreadpressed? Colors.green:null,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 7.5),
                            minimumSize: Size.zero,
                          ),
                          child: const Text("Unread"),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _pressedchange();
                              setState(() {
                                favouritespressed=true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                               backgroundColor:favouritespressed? Colors.green:null,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7.5),
                              minimumSize: Size.zero,
                            ),
                            child: const Text("Favourites")),
                        ElevatedButton(
                            onPressed: () {
                              _pressedchange();
                              setState(() {
                                groupspressed=true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                               backgroundColor:groupspressed? Colors.green:null,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7.5),
                              minimumSize: Size.zero,
                            ),
                            child: const Text("Groups")),
                      ],
                    )),
                const SizedBox(
                  height: 15,
                ),
                const ChatPlate(),
                const ChatPlate(),
                /*  const ChatPlate(),
                const ChatPlate(),
                const ChatPlate(),
                const ChatPlate(),
                const ChatPlate(),
                const ChatPlate(),
                const ChatPlate(),
                const ChatPlate(),
                const ChatPlate(),
                const ChatPlate(), */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
