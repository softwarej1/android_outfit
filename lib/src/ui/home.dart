import 'package:flutter/material.dart';
import 'package:flutter_outfit/src/components/item_menu.dart';
import 'package:flutter_outfit/src/components/list_button.dart';
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
  int situationNuber = 0;

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
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ItemMenu(
                  menuimage: ImagePath.genderTabImage,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: ItemMenu(
                  menuimage: ImagePath.seasonTabImage,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
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
                      print('성별');
                      print(genNumber);
                    },
                  );
                  // 클릭된 버튼에 대한 추가적인 처리나 상태 업데이트 수행
                },
              ),
              SizedBox(height: 16),
              ListButton(
                menuListIcons: ImagePath.season_iconimage,
                menuListText: ContextualList.season,
                isParentSelected: true, // 상위 리스트 버튼이 선택되었을 때만 활성화
                onButtonPressed: (index) {
                  setState(
                    () {
                      seasonNumber = index;
                      print('계절');
                      print(seasonNumber);
                    },
                  );
                  // 클릭된 버튼에 대한 추가적인 처리나 상태 업데이트 수행
                },
              ),
              SizedBox(height: 16),
              ListButton(
                menuListIcons: ImagePath.situation_iconimage,
                menuListText: ContextualList.situation,
                isParentSelected: true, // 상위 리스트 버튼이 선택되었을 때만 활성화
                onButtonPressed: (index) {
                  setState(
                    () {
                      situationNuber = index;
                      print('상황별');
                      print(situationNuber);
                    },
                  );
                  // 클릭된 버튼에 대한 추가적인 처리나 상태 업데이트 수행
                },
              ),
            ],
          ),
          CarouselSlider(
            items: ImagePath.ContextualImage[genNumber][seasonNumber]
                    [situationNuber]
                .map((image) {
              return Image.asset(image, fit: BoxFit.cover);
            }).toList(),
            options: CarouselOptions(
              height: 400.0,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _current = index;
                  },
                );
              },
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${_current + 1} / ${ImagePath.ContextualImage[genNumber][seasonNumber][situationNuber].length}',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10.0),
              ...ImagePath.ContextualImage[genNumber][seasonNumber]
                      [situationNuber]
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
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
