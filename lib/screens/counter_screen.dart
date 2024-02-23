import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  final total = 0;
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fontStyle = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total',
              style: fontStyle,
            ),
            Text(
              '$total',
              style: fontStyle,
            ),
          ],
        ),
      ),
    );
  }
}
