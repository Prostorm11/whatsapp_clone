import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: 0.3 * screenwidth,
                height: 0.25 * screenheight,
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    "images/Logo.png",
                  ),
                ),
              ),
              const Text(
                "Welcome To WhatsApp",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 0.9 * screenwidth,
                // color: Colors.amber,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          children: [
                        const TextSpan(text: "Read our "),
                        WidgetSpan(
                            alignment: PlaceholderAlignment
                                .baseline, // Align with the baseline
                            baseline: TextBaseline.alphabetic,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                minimumSize: Size.zero,
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Privacy Policy. ",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )),
                        const TextSpan(text: "Tap 'Agree and Continue' to")
                      ])),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: RichText(
                    text: TextSpan(
                        style: const TextStyle(fontSize: 16),
                        children: [
                      const TextSpan(
                        style: TextStyle(color: Colors.black),
                        text: "accept the ",
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment
                            .baseline, // Align with the baseline
                        baseline: TextBaseline.alphabetic,
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            "Terms Of Service",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )
                    ])),
              ),
              SizedBox(
                height: 0.05 * screenheight,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whatscolor,
                      foregroundColor: Colors.white),
                  child: const Text(
                    "Agree And Continue",
                  ))
            ],
          )),
    );
  }
}
