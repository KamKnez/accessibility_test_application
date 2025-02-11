import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_app.dart';
import 'my_app_state.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MyApp(),
    ),
  );
  SemanticsBinding.instance.ensureSemantics();
}
