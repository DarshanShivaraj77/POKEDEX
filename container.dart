import 'package:flutter/material.dart';

class PESUContainer extends StatelessWidget {
  const PESUContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        10,
        30,
        50,
        70,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 100,
        horizontal: 50,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          color: Colors.red,
          width: 10,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Text('Hello World!'),
    );
  }
}
