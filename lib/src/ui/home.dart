import 'package:flutter/material.dart';
import 'package:flutter_outfit/src/components/item_menu.dart';
import 'package:flutter_outfit/src/components/list_button.dart';
import 'package:provider/provider.dart';
import '../../main.dart';
import '../res/contextual_list.dart';

import '../res/image_path.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  int _current = 0;
  int genNumber = 0;
  int seasonNumber = 0;
  int situationNumber = 0;
  List<String> likedImages = [];

  void toggleLike(String image) {
    setState(() {
      if (likedImages.contains(image)) {
        likedImages.remove(image);
      } else {
        likedImages.add(image);
      }
    });

    List<String> contextualList = [];
    if (likedImages.isNotEmpty) {
      // 찜 상태인 경우에만 데이터 배열을 저장합니다.
      contextualList = likedImages.toList();
    }

    MyNotifier myNotifier = Provider.of<MyNotifier>(context, listen: false);
    myNotifier.saveContextualList(contextualList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 228, 199),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ItemMenu(
                  menuimage: ImagePath.genderTabImage,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: ItemMenu(
                  menuimage: ImagePath.seasonTabImage,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: ItemMenu(
                  menuimage: ImagePath.situationTabImage,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListButton(
                menuListIcons: ImagePath.gen_iconimage,
                menuListText: ContextualList.gen,
                isParentSelected: true,
                onButtonPressed: (index) {
                  setState(
                    () {
                      genNumber = index;
                    },
                  );
                  // 클릭된 버튼에 대한 추가적인 처리나 상태 업데이트 수행
                },
              ),
              const SizedBox(height: 16),
              ListButton(
                menuListIcons: ImagePath.season_iconimage,
                menuListText: ContextualList.season,
                isParentSelected: true, // 상위 리스트 버튼이 선택되었을 때만 활성화
                onButtonPressed: (index) {
                  setState(
                    () {
                      seasonNumber = index;
                    },
                  );
                  // 클릭된 버튼에 대한 추가적인 처리나 상태 업데이트 수행
                },
              ),
              const SizedBox(height: 16),
              ListButton(
                menuListIcons: ImagePath.situation_iconimage,
                menuListText: ContextualList.situation,
                isParentSelected: true, // 상위 리스트 버튼이 선택되었을 때만 활성화
                onButtonPressed: (index) {
                  setState(
                    () {
                      situationNumber = index;
                    },
                  );
                  // 클릭된 버튼에 대한 추가적인 처리나 상태 업데이트 수행
                },
              ),
            ],
          ),
          CarouselSlider(
            items: ImagePath.ContextualImage[genNumber][seasonNumber]
                    [situationNumber]
                .map((image) {
              final isLiked = likedImages.contains(image);
              return Stack(
                children: [
                  Image.asset(image, fit: BoxFit.cover),
                  Positioned(
                    right: 8,
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () => toggleLike(image),
                      icon: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: isLiked ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
            options: CarouselOptions(
              height: 370.0,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _current = index;
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${_current + 1} / ${ImagePath.ContextualImage[genNumber][seasonNumber][situationNumber].length}',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10.0),
              ...ImagePath.ContextualImage[genNumber][seasonNumber]
                      [situationNumber]
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.blue : Colors.grey,
                  ),
                );
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }
}
