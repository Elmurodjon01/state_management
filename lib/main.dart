import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  final newTextNotifier = ValueNotifier('this is a new text');
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(newTextNotifier.value),
        ),
        body: Center(
          child: ValueListenableBuilder<String>(
            valueListenable: newTextNotifier,
            builder: (context, newText, child) {
              return FirstWidget(text: newText);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            newTextNotifier.value = "this is a brand new text";
          },
        ),
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  @override
  final String text;
  const FirstWidget({super.key, required this.text});

  Widget build(BuildContext context) {
    return Container();
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ThirdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
