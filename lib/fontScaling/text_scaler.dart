import 'package:flutter/material.dart';

class TextScalerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double scaleFactor =
        MediaQuery.maybeTextScalerOf(context)!.scale(1.0);

    return Scaffold(
      appBar: AppBar(title: Text("Text Scaling Test")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Normal Text",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              "Scaled Text",
              style: TextStyle(fontSize: 16 * scaleFactor),
            ),
            SizedBox(height: 10),
            Text(
              "Flutter adapts text size dynamically!",
              style: TextStyle(
                  fontSize: 20 * scaleFactor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
