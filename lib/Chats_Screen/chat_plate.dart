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
    return Container(
      // margin: const EdgeInsets.fromLTRB(7, 0, 0, 0),
      height: 0.11 * screenheight(context),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
        child: Row(
          children: [
            Container(
              width: 0.17 * screenwidth(context),
              height: 0.17 * screenwidth(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    //color: Colors.red,
                    border: Border(
                  //top: BorderSide(width: 0.5, color: Colors.black),
                  bottom: BorderSide(width: 0.5,color: Colors.black)
                )),
                child: Column(
                  children: [
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text(
                            "Yowwwwwwwwwwwwwwwwwwww",
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 1,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 6, 0),
                            child: Text(
                              "02/09/2024",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          flex: 9,
                          child: Text(
                            "Hello The Man Who was Supposed to pick Me didnt Come",
                            maxLines: 2,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 15,
                            width: 15,
                            margin: const EdgeInsets.fromLTRB(5, 0, 6, 0),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                            child: const Center(
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 10, fontWeight: FontWeight.w500),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
