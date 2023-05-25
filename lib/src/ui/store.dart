import 'package:flutter/material.dart';

// ignore: camel_case_types
class store extends StatefulWidget {
  const store({super.key});

  @override
  State<store> createState() => _storeState();
}

// ignore: camel_case_types
class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('store'));
  }
}
