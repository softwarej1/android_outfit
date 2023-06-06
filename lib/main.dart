import 'package:flutter/material.dart';
import 'package:flutter_outfit/src/myflutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MyNotifier>(create: (_) => MyNotifier()),
  ], child: const MyApp()));
}

class MyNotifier extends ChangeNotifier {
  List<String> contextualLikeList = [];

  void saveContextualList(List<String> list) {
    contextualLikeList = list;
    notifyListeners(); // 상태 변경을 알립니다.
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: Myflutter(),
    );
  }
}
