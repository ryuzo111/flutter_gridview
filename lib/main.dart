import 'package:flutter/material.dart';
import 'grid_view_page.dart';
import 'sliver_app_bar_page.dart';
import 'shrinkable_footer_page.dart';
import 'layout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const GridViewPage(),
      // home: const SliverAppBarPage(),
      // home: const ShrinkableFooterPage(),
      home: ResponsiveDesignPage(),
    );
  }
}
