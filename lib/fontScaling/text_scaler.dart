import 'package:flutter/material.dart';

class TextScalerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Text Scaler Page',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
