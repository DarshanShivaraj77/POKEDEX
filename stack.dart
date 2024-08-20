import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUStack extends StatelessWidget {
  const PESUStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.centerLeft,
      children: [
        SampleContainer(
          color: Colors.yellow,
          label: '1',
          padding: 100,
        ),
        SampleContainer(
            color: Colors.pink,
            label: '2',
            padding: 50
        ),
        Positioned(
          bottom: 10,
          right: 50,

          child: SampleContainer(
            color: Colors.blue,
            label: '3',
          ),
        ),
      ],
    );
  }
}
