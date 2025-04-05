import 'dart:io';

import 'package:flutter/material.dart';

class SemanticsImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Semantics Test")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Semantics for a image with a label
              Semantics(
                label: 'A proffessional application picture',
                child: Image.asset(
                  'assets/Kamilo_Knezevic.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
              Text('Kamilo Knezevic'),
            ],
          ),
        ),
      ),
    );
  }
}
