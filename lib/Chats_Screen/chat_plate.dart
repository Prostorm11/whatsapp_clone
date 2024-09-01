import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';

class ChatPlate extends StatefulWidget {
  const ChatPlate({super.key});

  @override
  State<ChatPlate> createState() => _ChatPlateState();
}

class _ChatPlateState extends State<ChatPlate> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 9),
          height: 0.11*screenheight(context),
          decoration:const  BoxDecoration(
           
          color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              children: [
                Container(
                  width: 0.17*screenwidth(context),
                  height: 0.17*screenwidth(context),
                  decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                  color: Colors.amber,
                  ),
                  
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    //child: Text("data"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}