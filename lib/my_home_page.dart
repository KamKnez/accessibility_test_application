import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'colorContrast/theme_data.dart';
import 'combined/tools_combined.dart';
import 'fontScaling/auto_size_Text.dart';
import 'fontScaling/text_scaler.dart';
import 'semantics/merge_semantics.dart';
import 'semantics/semantics.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = SemanticsPage();
        break;
      case 1:
        page = MergeSemanticsPage();
        break;
      case 2:
        page = TextScalerPage();
        break;
      case 3:
        page = AutoSizeTextPage();
        break;
      case 4:
        page = ThemeDataPage();
        break;
      case 5:
        page = ToolsCombinedPage();
        break;
      default:
        throw UnimplementedError('No widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_1_outlined),
                    label: Text('Semantics'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_2_outlined),
                    label: Text('MergeSemantics'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_3_outlined),
                    label: Text('TextScaler'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_4_outlined),
                    label: Text('AutoSizeText'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_5_outlined),
                    label: Text('ThemeData'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.filter_6_outlined),
                    label: Text('ToolsCombined'),
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}
