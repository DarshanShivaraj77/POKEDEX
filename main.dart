import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/avatarStack.dart';
// import 'package:pokedex/column.dart';
import 'package:pokedex/container.dart';
import 'package:pokedex/exercise_1.dart';
import 'package:pokedex/expanded,dart.dart';
// import 'package:pokedex/list.dart';
import 'package:pokedex/list_builder.dart';
import 'package:pokedex/list_column.dart';
import 'package:pokedex/list_horizontall.dart';
import 'package:pokedex/row.dart';
import 'package:pokedex/stack.dart';
import 'package:pokedex/stateful_counter.dart';
import 'package:pokedex/stateful_row.dart';

import 'package:flutter/material.dart';
import 'package:pokedex/POKEMON/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My New App',
      home: HomePage(), // Use HomePage as the home widget
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('My Title'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close the drawer!'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PokemonsListPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.primary,
        child: Container(
          height: 100,
        ),
      ),
      body: const MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const AvatarStack();
  }
}
