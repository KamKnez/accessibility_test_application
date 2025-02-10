import 'package:flutter/material.dart';

class ThemeDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Theme Data Page',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
