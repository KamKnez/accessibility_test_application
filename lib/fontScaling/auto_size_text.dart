import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AutoSizeTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textScaler = MediaQuery.maybeTextScalerOf(context);

    return Scaffold(
      appBar: AppBar(title: Text("AutoSizeText Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AutoSizeText that scales with system settings
            SizedBox(
              height: 100,
              child: AutoSizeText(
                "This text scales and shrinks if needed to fit within the container.",
                style: TextStyle(
                    fontSize: textScaler?.scale(24)), // Scaled text size
                maxLines: 2,
                overflow: TextOverflow
                    .ellipsis, // Ensures truncation when overflowing
              ),
            ),
            SizedBox(height: 20),

            // AutoSizeText with min and max font size control
            AutoSizeText(
              "Min font size 12, max 30, scales with user preferences.",
              style: TextStyle(
                  fontSize: textScaler?.scale(24)), // Scaled text size
              minFontSize: (textScaler!.scale(12) / 2).round() *
                  2, // Ensure multiple of stepGranularity
              maxFontSize: (textScaler.scale(30) / 2).round() *
                  2, // Ensure multiple of stepGranularity
              stepGranularity:
                  2, // Step size must match min/max font size multiples
              maxLines: 2,
              overflow: TextOverflow.ellipsis, // Truncates with "..." if needed
            ),
          ],
        ),
      ),
    );
  }
}
