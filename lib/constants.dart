//import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:firebase_core/firebase_core.dart';

const whatscolor= Color.fromARGB(255, 8, 107, 12);
final auth=FirebaseAuth.instance;
void statusbar(){
   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make the status bar transparent
      statusBarIconBrightness: Brightness.dark, // Dark icons for light background
      statusBarBrightness: Brightness.light, // For iOS, light status bar background
    ));
}
double screenheight(BuildContext context){
  return MediaQuery.of(context).size.height;
}
double screenwidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}