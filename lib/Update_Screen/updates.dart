import 'package:flutter/material.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("Updates")
          ],
        ),
      ),
    );
  }
}