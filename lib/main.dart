import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:node_manager/screens/startup/checkingNvm.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(280, 100);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Node Manager";
    win.show();
  });
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      themeMode: ThemeMode.light,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        body: Center(child: CheckingNVM())
      ),
    );
  }
}
