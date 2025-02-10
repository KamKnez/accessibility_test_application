import 'package:flutter/material.dart';

class SemanticsPage extends StatelessWidget {
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
              // Semantics for a Button
              Semantics(
                label: "Press this button to show a message",
                button: true,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Hello, this is a test!")),
                    );
                  },
                  child: Text("Click Me"),
                ),
              ),

              SizedBox(height: 20),

              // Semantics for a Text Widget
              Semantics(
                label: "This is an important message",
                child: Text(
                  "Flutter is awesome!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 20),

              // Hiding a widget from screen readers
              Semantics(
                excludeSemantics: true,
                child: Text(
                  "This text will not be read by screen readers",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
