// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomTabbar1 extends StatefulWidget {
  final List<String> item;
  const CustomTabbar1({Key? key, required this.item}) : super(key: key);

  @override
  State<CustomTabbar1> createState() => _CustomTabbar1State();
}

class _CustomTabbar1State extends State<CustomTabbar1> {
  int selectedIndex = 0;
  setIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      // clipBehavior: Clip.antiAlias,
      // decoration: const BoxDecoration(
      //   color: Colors.black,
      // ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(widget.item.length, (index) {
                bool checkIndex = index == selectedIndex;
                var item = widget.item[index];
                return InkWell(
                  onTap: () => setIndex(index),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(
                                width: 2,
                                color: checkIndex
                                    ? Colors.blueAccent.shade700
                                    : Colors.white))),
                    child: Center(
                      child: Text(
                        item,
                        style: TextStyle(
                            color: checkIndex ? Colors.black : Colors.black38),
                      ),
                    ),
                  ),
                );
              })),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 24,
                  offset: Offset(0, 11),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.menu,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTabbar2 extends StatefulWidget {
  final List<String> item;
  final double? textSize;
  final List<Widget> widget;
  CustomTabbar2(
      {Key? key, required this.item, required this.widget, this.textSize})
      : super(key: key);

  @override
  State<CustomTabbar2> createState() => _CustomTabbar2State();
}

class _CustomTabbar2State extends State<CustomTabbar2> {
  int selectedIndex = 0;
  setIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(widget.item.length, (index) {
                  bool checkIndex = index == selectedIndex;
                  var item = widget.item[index];
                  return InkWell(
                    onTap: () => setIndex(index),
                    child: Container(
                      margin: const EdgeInsets.only(
                          right: 25.0, top: 10, bottom: 15),
                      padding: const EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: checkIndex
                                      ? Colors.blueAccent.shade700
                                      : Colors.white))),
                      child: Center(
                        child: Text(
                          item,
                          style: TextStyle(
                              fontSize: widget.textSize ?? 12,
                              color:
                                  checkIndex ? Colors.black : Colors.black38),
                        ),
                      ),
                    ),
                  );
                })),
              ),
            ],
          ),
          IndexedStack(
            index: selectedIndex,
            children: List.generate(widget.widget.length, (index) {
              return Visibility(
                visible: index == selectedIndex,
                maintainState: true,
                child: Column(
                  children: [
                    // Widget khusus untuk tab ini
                    widget.widget[index],
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
