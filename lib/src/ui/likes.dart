import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

// ignore: use_key_in_widget_constructors
class Likes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyNotifier myNotifier = Provider.of<MyNotifier>(context);
    // ignore: unused_element
    void toggleLike(String image) {
      MyNotifier myNotifier = Provider.of<MyNotifier>(context, listen: false);
      List<String> contextualList = myNotifier.contextualLikeList;

      if (contextualList.contains(image)) {
        contextualList.remove(image);
      } else {
        contextualList.add(image);
      }

      myNotifier.saveContextualList(contextualList);
    }

    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 그리드뷰 열의 수
          mainAxisSpacing: 10.0, // 주축 방향 간격
          crossAxisSpacing: 10.0, // 교차축 방향 간격
        ),
        itemCount: myNotifier.contextualLikeList.length,
        itemBuilder: (BuildContext context, int index) {
          String imagePath = myNotifier.contextualLikeList[index];

          return Image.asset(
            imagePath,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
