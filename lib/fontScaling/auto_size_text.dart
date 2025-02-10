import 'package:flutter/material.dart';

class AutoSizeTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Auto Size Text Page',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
