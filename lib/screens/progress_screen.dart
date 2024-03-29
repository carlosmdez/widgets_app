import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular Progress Indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black38,
          ),
          Text('Circular Progress Controlled'),
          SizedBox(height: 10),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0.0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircularProgressIndicator(
                strokeWidth: 2,
                value: progressValue,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(width: 20),
              Expanded(
                  child: LinearProgressIndicator(
                value: progressValue,
              ))
            ]),
          );
        });
  }
}
