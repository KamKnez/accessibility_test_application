import 'package:flutter/material.dart';

class MergeSemanticsPage extends StatefulWidget {
  @override
  _MergeSemanticsPageState createState() => _MergeSemanticsPageState();
}

class _MergeSemanticsPageState extends State<MergeSemanticsPage> {
  bool isCheckedWithoutMerge = false;
  bool isCheckedWithMerge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MergeSemantics Test")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Without MergeSemantics
            Text(
              "Without MergeSemantics:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: isCheckedWithoutMerge,
                  onChanged: (value) {
                    setState(() {
                      isCheckedWithoutMerge = value!;
                    });
                  },
                ),
                SizedBox(width: 8),
                Text("Agree to terms"),
              ],
            ),

            Divider(height: 40),

            // With MergeSemantics
            Text(
              "With MergeSemantics:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            MergeSemantics(
              child: Row(
                children: [
                  Checkbox(
                    value: isCheckedWithMerge,
                    onChanged: (value) {
                      setState(() {
                        isCheckedWithMerge = value!;
                      });
                    },
                  ),
                  SizedBox(width: 8),
                  Text("Agree to terms"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
