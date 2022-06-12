import 'package:flutter/material.dart';
import 'providers/shoppingCart_provider.dart';
import 'homePage.dart';
import 'providers/count_provider.dart';
import 'main.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App (${context.watch<Counter>().count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('counted${context.watch<ShoppingCart>().count} ended with'),
            Text('sanaldi${context.watch<ShoppingCart>().cart} gacha sanaldi')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: heroTag,
        key: Key('addItem_floatingActionButton'),
        onPressed: () => context.read<ShoppingCart>().addItem('Bread'),
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
