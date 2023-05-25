import 'package:flutter/material.dart';

// ignore: camel_case_types
class likes extends StatefulWidget {
  const likes({super.key});

  @override
  State<likes> createState() => _likesState();
}

// ignore: camel_case_types
class _likesState extends State<likes> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('likes'),
    );
  }
}
