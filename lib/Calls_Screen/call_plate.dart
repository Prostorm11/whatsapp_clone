import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';

class CallPlate extends StatefulWidget {
  const CallPlate({super.key});

  @override
  State<CallPlate> createState() => _CallPlateState();
}

class _CallPlateState extends State<CallPlate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenheight(context) * 0.09,
      width: double.infinity,
      //color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: SizedBox(
                height: double.infinity,
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text(
                                    "Name",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              Text("(2)"),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                child: Icon(
                                  Icons.phone,
                                  size: 17,
                                ),
                              ),
                              Text("Status"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 4,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("23/11/2003"),
                    SizedBox(width: 5),
                    Icon(Icons.call_missed),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
