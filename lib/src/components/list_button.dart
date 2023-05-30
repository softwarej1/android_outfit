import 'package:flutter/material.dart';

class ListButton extends StatefulWidget {
  final List<String> menuListIcons;
  final List<String> menuListText;
  final bool isParentSelected; // 상위 리스트 버튼 선택 여부
  final Function(int) onButtonPressed; // 버튼 클릭 처리 콜백 함수

  const ListButton({
    Key? key,
    required this.menuListIcons,
    required this.menuListText,
    required this.isParentSelected,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  State<ListButton> createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 120,
      child: ListView.builder(
        itemCount: widget.menuListText.length,
        itemBuilder: (BuildContext context, int index) {
          final isActive = selectedIndex == index && widget.isParentSelected;

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: widget.isParentSelected
                    ? () {
                        setState(() {
                          if (selectedIndex == index) {
                            selectedIndex = -1;
                          } else {
                            selectedIndex = index;
                          }
                        });
                        widget.onButtonPressed(index); // 클릭 이벤트 콜백 호출
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: isActive
                      ? const Color.fromARGB(255, 218, 246, 255)
                      : Colors.grey,
                ),
                child: Row(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Image.asset(
                        widget.menuListIcons[index],
                      ),
                    ),
                    Text(
                      widget.menuListText[index],
                      style: TextStyle(
                        color: isActive ? Colors.black : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
