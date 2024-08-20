import 'package:flutter/material.dart';
import 'package:pokedex/row.dart';

class PESUHorizontalList extends StatelessWidget {
  final int n;

  const PESUHorizontalList({
    super.key,
    required this.n,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SampleContainer(
            color: Colors.redAccent,
            label: 'Tile-$index',
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 8);
        },
        itemCount: n,
      ),
    );
  }
}
// TODO Implement this library.