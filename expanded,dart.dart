import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUExpanded extends StatelessWidget {
  const PESUExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SampleContainer(
          color: Colors.brown,
          label: 'Title',
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: Image.asset('public/images/logo-type.png'),
            ),
            Expanded(
              flex: 1,
              child: SampleContainer(
                color: Colors.blue,
                label: '1',
              ),
            ),
            Expanded(
              flex: 1,
              child: SampleContainer(
                color: Colors.pink,
                label: '2',
              ),
            ),
            Expanded(
              flex: 1,
              child: SampleContainer(
                color: Colors.yellow,
                label: '3',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
