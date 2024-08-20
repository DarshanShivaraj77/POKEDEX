import 'package:flutter/material.dart';
import 'package:pokedex/components/button.dart';
import 'package:pokedex/row.dart';

class PESURowPage extends StatefulWidget {
  const PESURowPage({super.key});

  @override
  State<PESURowPage> createState() => _PESURowPageState();
}

class _PESURowPageState extends State<PESURowPage> {
  MainAxisAlignment alignment = MainAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Row Example'),
        ),
        body: Column(
          children: [
            PESURow(mainAxisAlignment: alignment),
            Divider(),
            PESUButton(
              label: 'Start',
              onPressed: () {
                setState(() {
                  alignment = MainAxisAlignment.start;
                });
              },
              active: alignment == MainAxisAlignment.start,
            ),
            PESUButton(
              label: 'End',
              onPressed: () {
                setState(() {
                  alignment = MainAxisAlignment.end;
                });
              },
              active: alignment == MainAxisAlignment.end,
            ),
            PESUButton(
              label: 'Center',
              onPressed: () {
                setState(() {
                  alignment = MainAxisAlignment.center;
                });
              },
              active: alignment == MainAxisAlignment.center,
            ),
          ],
        )
    );
  }
}

