import 'package:flutter/material.dart';
import 'package:flutter_outfit/src/ui/in_app_browser_page.dart';

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
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InAppBrowserPage()));
          },
          child: const Center(
            child: Text(
              '무신사 바로가기',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
