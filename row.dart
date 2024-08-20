import 'package:flutter/material.dart';

class PESURow extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;

  const PESURow({
    super.key,
    required this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Hello World'),
        FilledButton(
          onPressed: () {},
          child: Text('Click ME'),
        ),
        const SampleContainer(
          color: Colors.pink,
          label: '1',
        ),
      ],
    );
  }
}

class SampleContainer extends StatelessWidget {
  final Color color;
  final String label;
  final double? padding;

  const SampleContainer({
    super.key,
    required this.color,
    required this.label,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 30),
      color: color,
      child: Text(label),
    );
  }
}
