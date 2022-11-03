import 'package:flutter/material.dart';
import 'package:provider_2/provider/carts_provider.dart';
import '../provider/counter_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 150, 76, 233),
        title: Text('You have'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<ShoppingCarts>().count}'),
            Text('${context.watch<ShoppingCarts>().cart}'),
          ],
        ) 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ShoppingCarts>().addItem('Tshirt'),
        tooltip: 'Add Item',
        child: Icon(Icons.add,
        color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 150, 76, 233),
      ),
    );
  }
}