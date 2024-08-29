import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'dart:developer' as devtools show log;

import 'package:whatsapp_clone/constants.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController _countrycodecontroller;
  @override
  void initState() {
    super.initState();
    _countrycodecontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              const Text(
                "Enter Your Phone Number",
                style: TextStyle(
                    color: whatscolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Whatsapp will need to verify your account",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              IntlPhoneField(
                controller: _countrycodecontroller,
                decoration: const InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder(borderSide: BorderSide())),
                onChanged: (phone) {
                  devtools.log(phone.completeNumber.toString());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Carrier charges may apply")
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: whatscolor,
                foregroundColor: const Color(0xffffffff)
              ),
              child: const Text("Next"))
        ],
      ),
    ));
  }
}
