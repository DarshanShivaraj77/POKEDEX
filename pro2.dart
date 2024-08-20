import 'package:flutter/material.dart';

class PESU2 extends StatelessWidget {
  final int n;
  const PESU2({super.key , required this.n});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(n,(index){
          return Tile(label: 'Tile-$index');
        },),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String label;
  const Tile({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: double.infinity,
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.only(bottom: 16),
      child: Text(label),
    );
  }
}
