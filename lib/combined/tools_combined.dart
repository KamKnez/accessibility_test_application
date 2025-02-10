import 'package:flutter/material.dart';

class ToolsCombinedPage extends StatefulWidget {
  const ToolsCombinedPage({super.key});

  @override
  State<ToolsCombinedPage> createState() => _ToolsCombinedPageState();
}

class _ToolsCombinedPageState extends State<ToolsCombinedPage> {
  bool isDarkMode = false; // Track theme mode
  bool notificationsEnabled = true; // Checkbox state
  bool autoUpdatesEnabled = false;
  double textScaleFactor = 1.0; // Default text scale

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Settings")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaleFactor: textScaleFactor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Theme Toggle
                MergeSemantics(
                  child: Row(
                    children: [
                      Semantics(
                        label: "Toggle dark mode",
                        child: Switch(
                          value: isDarkMode,
                          onChanged: (value) {
                            setState(() {
                              isDarkMode = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Dark Mode"),
                    ],
                  ),
                ),
                const Divider(),

                // Text Scaling Slider
                MergeSemantics(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Text Size"),
                      Slider(
                        value: textScaleFactor,
                        min: 0.8,
                        max: 2.0,
                        divisions: 6,
                        label: textScaleFactor.toStringAsFixed(1),
                        onChanged: (value) {
                          setState(() {
                            textScaleFactor = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(),

                // Notification Checkbox
                MergeSemantics(
                  child: Row(
                    children: [
                      Semantics(
                        child: Checkbox(
                          value: notificationsEnabled,
                          onChanged: (value) {
                            setState(() {
                              notificationsEnabled = value!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Enable Notifications"),
                    ],
                  ),
                ),

                // Auto Update Checkbox
                MergeSemantics(
                  child: Row(
                    children: [
                      Semantics(
                        child: Checkbox(
                          value: autoUpdatesEnabled,
                          onChanged: (value) {
                            setState(() {
                              autoUpdatesEnabled = value!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text("Enable Auto Updates"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
