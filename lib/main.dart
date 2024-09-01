import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Chats_Screen/chat_plate.dart';
//import 'package:flutter/services.dart';
//import 'package:whatsapp_clone/NewUser/signUp.dart';
import 'package:whatsapp_clone/NewUser/terms_and_condition.dart';
import 'package:whatsapp_clone/constants.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/screennavigator.dart';
//import 'package:whatsapp_clone/NewUser/terms_and_condition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

   

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, snapshot) {
          return ChatPlate();
         /*  switch (snapshot.connectionState) {
            case (ConnectionState.done):
              if (auth.currentUser != null) {
                return const MyHome();
              } else {
                return const Terms();
              }
            default:
              return  const Scaffold(
                body:  Column(
                  children: [
                    Text("ERRRO ERRROR")
                  ],
                ),
              );
          } */
    
          /*   */
        });
  }
}
