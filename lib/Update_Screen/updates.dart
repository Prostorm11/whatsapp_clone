import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Update_Screen/personal_status_plate.dart';
import 'package:whatsapp_clone/Update_Screen/status_plate.dart';
import 'dart:developer' as devtools show log;

enum MenuAction { logout }

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  bool isUnveiled = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: PopupMenuButton<MenuAction>(itemBuilder: (context) {
            return const [
              PopupMenuItem<MenuAction>(
                  value: MenuAction.logout, child: Text("Logout"))
            ];
          }),
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Updates",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Status",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PersonalStatusPlate(),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Recent Updates",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                        const StatusPlate(),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            devtools.log("message");
                            setState(() {
                              isUnveiled = !isUnveiled;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Viewed Updates",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                                Icon(
                                  isUnveiled
                                      ? Icons.arrow_drop_down
                                      : Icons.arrow_drop_up,
                                  size: 28,
                                )
                              ],
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: isUnveiled ? 1 : 0,
                          duration: const Duration(milliseconds: 500),
                          child:  Visibility(
                            visible: isUnveiled,
                            child: const Column(
                              children: [
                                StatusPlate(),
                                StatusPlate(),
                                StatusPlate(),
                                StatusPlate(),
                                StatusPlate(),
                                StatusPlate(),
                                StatusPlate(),
                                StatusPlate()
                              ],
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
