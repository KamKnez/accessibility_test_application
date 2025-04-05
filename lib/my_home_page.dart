import 'package:accessibility_test_application/semantics/semantics_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'colorContrast/theme_data.dart';
import 'combined/tools_combined.dart';
import 'fontScaling/auto_size_Text.dart';
import 'fontScaling/text_scaler.dart';
import 'semantics/merge_semantics.dart';
import 'semantics/semantics.dart';

class MyHomePage extends StatelessWidget {
  final VoidCallback toggleTheme; // Function to switch theme

  const MyHomePage({super.key, required this.toggleTheme});

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.pop(context); // Close the drawer first
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Drawer Navigation")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.filter_1_outlined),
              title: Text('Semantics'),
              onTap: () => _navigateTo(context, SemanticsPage()),
            ),
            ListTile(
              leading: Icon(Icons.filter_2_outlined),
              title: Text('SemanticsImage'),
              onTap: () => _navigateTo(context, SemanticsImagePage()),
            ),
            ListTile(
              leading: Icon(Icons.filter_3_outlined),
              title: Text('MergeSemantics'),
              onTap: () => _navigateTo(context, MergeSemanticsPage()),
            ),
            ListTile(
              leading: Icon(Icons.filter_4_outlined),
              title: Text('TextScaler'),
              onTap: () => _navigateTo(context, TextScalerPage()),
            ),
            ListTile(
              leading: Icon(Icons.filter_5_outlined),
              title: Text('AutoSizeText'),
              onTap: () => _navigateTo(context, AutoSizeTextPage()),
            ),
            ListTile(
              leading: Icon(Icons.filter_6_outlined),
              title: Text('ThemeData'),
              onTap: () =>
                  _navigateTo(context, ThemeDataPage(toggleTheme: toggleTheme)),
            ),
            ListTile(
              leading: Icon(Icons.filter_7_outlined),
              title: Text('ToolsCombined'),
              onTap: () => _navigateTo(context, ToolsCombinedPage()),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Select a page from the menu",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
