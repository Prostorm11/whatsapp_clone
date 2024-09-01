// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';
import 'package:whatsapp_clone/screennavigator.dart';

class Verify extends StatefulWidget {
  final String data;
  final String number;
  final String countryCode;
  const Verify(
      {super.key,
      required this.data,
      required this.number,
      required this.countryCode});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  late TextEditingController _typedcode;

  @override
  void initState() {
    _typedcode = TextEditingController();
    super.initState();
  }

  void _otpverify() async {
    AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.data, smsCode: _typedcode.text);

    try {
      await auth.signInWithCredential(credential);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const MyHome()));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Verification failed ${e.message}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          width: double.infinity,
          //height: screenheight(context),
          child: Column(
            children: [
              FittedBox(
                child: Text(
                  "Verify (${widget.countryCode}) ${widget.number.substring(widget.countryCode.length)}",
                style: const TextStyle(color: whatscolor,fontSize: 20,fontWeight: FontWeight.w500),),
              ),
              const SizedBox(
                height: 25,
              ),
              const FittedBox(
                child: Text(
                  "Waiting to automatically detect an SMS sent to",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "${widget.number}. ",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            "Wrong Number?",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 0.45 * screenwidth(context),
                child: TextField(
                  controller: _typedcode,
                  //decoration: const InputDecoration(hintText: "Type Code To Verify"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Enter 6-digit code"),
              ElevatedButton(onPressed: _otpverify, child: const Text("Verify"))
            ],
          ),
        ),
      ),
    );
  }
}
