import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
          ],
        ),
      ),
    );
  }
}
