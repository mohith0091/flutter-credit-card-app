import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/const.dart';
import 'components/menu_widget.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Const.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 50, right: 16),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Const.lightTrans,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Const.closeIcon,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                    margin: const EdgeInsets.only(left: 15),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Const.lightTrans,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(Const.profile)),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mohith",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "UX UI Designer",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 70),
                MenuWidget(index: 0),
                MenuWidget(index: 1),
                MenuWidget(index: 2),
                MenuWidget(index: 3),
                MenuWidget(index: 4),
                MenuWidget(index: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
