import 'package:flutter/material.dart';

class ThemeDataPage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const ThemeDataPage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bad contrast text:",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20),
            Text(
              "This text stays black in both themes",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black, // Fixed color, won't change in dark mode
              ),
            ),
            SizedBox(height: 20),
            Text(
              "This text stays white in both themes",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white, // Fixed white color
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.tertiary,
              ),
              onPressed: toggleTheme, // Calls the toggleTheme function
              child: Text("Switch Theme",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary)),
            ),
            SizedBox(height: 20),
            Text(
              "Best practice:",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20),
            Text(
              "This text adapts to light/dark mode",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
