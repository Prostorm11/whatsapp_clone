//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Calls_Screen/calls.dart';
import 'package:whatsapp_clone/Chats_Screen/chat.dart';
import 'package:whatsapp_clone/Settings_Screen/settings.dart';
import 'package:whatsapp_clone/Update_Screen/updates.dart';
//import 'package:flutter/widgets.dart';
//import 'dart:developer' as devtools show log;

//import 'package:whatsapp_clone/constants.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // ignore: unused_field
  int _selectedindex = 0;
  //double fontSize=24;

  static  final List<Widget> _navigationOptions = <Widget>[
    const Updates(),
    const Calls(),
    const Chat(),
    const Settings()
  ];
  void updateselect(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _navigationOptions[_selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.update), label: "update"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call), label: "call"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat), label: "chat"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "settings"),
            ],
            onTap: updateselect,
            currentIndex: _selectedindex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.transparent,
          )),
    );
  }
}
