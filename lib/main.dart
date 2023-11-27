import 'package:custom_widgets/test.dart';
import 'package:flutter/material.dart';

import 'reciepe_content/reciepe_content_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}
