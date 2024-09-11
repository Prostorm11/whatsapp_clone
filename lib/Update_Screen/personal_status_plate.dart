import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';

class PersonalStatusPlate extends StatefulWidget {
  const PersonalStatusPlate({super.key});

  @override
  State<PersonalStatusPlate> createState() => _PersonalStatusPlateState();
}

class _PersonalStatusPlateState extends State<PersonalStatusPlate> {
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
                          bottom: BorderSide(width: 0.5, color: Colors.black))),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      0,
                      20,
                      0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Name",
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              maxLines: 1,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Time",
                              maxLines: 1,
                            )
                          ],
                        ),
                        Row(children: [
                          Icon(Icons.camera_alt),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.edit)
                        ])
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
