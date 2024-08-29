import 'package:flutter/material.dart';
import 'package:whatsapp_clone/NewUser/signUp.dart';
//import 'package:whatsapp_clone/NewUser/terms_and_condition.dart';

void main() {
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
  Widget build(BuildContext context) {
    final  statusbar = MediaQuery.of(context).padding.top;
   return  Padding(padding:EdgeInsets.fromLTRB(0, statusbar, 0, 0),
   child: const Signup()
    );
  }
}
