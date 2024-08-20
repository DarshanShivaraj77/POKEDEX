import 'package:flutter/material.dart';



class AvatarStack extends StatelessWidget {
  const AvatarStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        // First circle
        Positioned(
          left: 0,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.green,
          ),
        ),
        // Second circle
        Positioned(
          left: 50, // Adjust the position to create the overlapping effect
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.yellow,
          ),
        ),
        // Third circle
        Positioned(
          left: 100, // Adjust the position to create the overlapping effect
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue,
          ),
        ),
      ],
    );
  }
}