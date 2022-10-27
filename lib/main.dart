import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/1_about_dialog/about_dialog_widget.dart';
import 'package:flutter_widgets/widgets/2_alert_dialog/alert_dialog_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets chris_developer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AlertDialogWidget(),
    );
  }
}
