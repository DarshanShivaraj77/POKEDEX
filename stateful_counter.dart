import 'package:flutter/material.dart';

class PESUCounter extends StatefulWidget {
  const PESUCounter({super.key});

  @override
  State<PESUCounter> createState() => _PESUCounterState();
}

class _PESUCounterState extends State<PESUCounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Counter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
