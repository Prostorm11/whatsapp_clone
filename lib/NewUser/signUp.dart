import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:whatsapp_clone/NewUser/verify.dart';
import 'dart:developer' as devtools show log;
import 'package:whatsapp_clone/constants.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController _countrycodecontroller;
  String? otp;
  String? countycode;
  bool loading = false;
  bool buttonenabled=false;
  late String? phonenumber;


  @override
  void initState() {
    super.initState();
    _countrycodecontroller = TextEditingController();
    _countrycodecontroller.addListener(_checkinput);
  }

  @override
  void dispose() {
    _countrycodecontroller.dispose();
    super.dispose();
  }
  void _checkinput(){
    setState(() {
    buttonenabled=_countrycodecontroller.text.isNotEmpty;
    });
  }

  void _sendotp() async {
    setState(() {
      loading=true;
    });
    try {
     
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phonenumber,
       
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance.signInWithCredential(credential);
          setState(() {
            loading=false;
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          setState(() {
            loading=false;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Verification failed: ${e.message}')),
          );
          devtools.log('Verification failed: ${e.code}');
        },
        codeSent: (String verificationId, int? resendToken) {
          
          setState(() {
            otp = verificationId;
            loading = false;
          });
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Verify(data: otp!,number:phonenumber!,countryCode:countycode!),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Verification code sent")),
          );
          devtools.log('Code sent: $verificationId');
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-retrieval timeout is usually handled automatically by Firebase
          setState(() {
            loading=false;
          });
          devtools.log('Auto-retrieval timeout: $verificationId');
        },
      );
    } catch (e) {
      setState(() {
        loading=false;
      });
      devtools.log('Exception: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  const SizedBox(height: 40),
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
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                    onChanged: (phone) {
                      phonenumber=phone.completeNumber;
                      countycode=phone.countryCode;
                      devtools.log(phone.completeNumber);
                    },
                  ),
                  const SizedBox(height: 10),
                  const Text("Carrier charges may apply"),
                ],
              ),
              // ignore: unnecessary_null_comparison
              (loading)? const CircularProgressIndicator():ElevatedButton(
                onPressed: buttonenabled?_sendotp:null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: whatscolor,
                  foregroundColor: const Color(0xffffffff),
                ),
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
