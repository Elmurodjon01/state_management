import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => ValueNotifier('New written text'),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State management'),
      ),
      body: Center(
        child: FirstWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final _textNotifier = context.read<ValueNotifier<String>>();
          _textNotifier.value = "this is a brand new _textNotifier";
        },
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  @override
  const FirstWidget({super.key});

  Widget build(BuildContext context) {
    return SecondWidget();
  }
}

class SecondWidget extends StatelessWidget {
  @override
  const SecondWidget({super.key});
  Widget build(BuildContext context) {
    return ThirdWidget();
  }
}

class ThirdWidget extends StatelessWidget {
  @override
  ThirdWidget({super.key});

  Widget build(BuildContext context) {
    final _textNotifier = context.watch<ValueNotifier<String>>();
    return Text(_textNotifier.value);
  }
}
