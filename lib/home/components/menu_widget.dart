import 'package:flutter/material.dart';

import '../../models/menu_model.dart';

class MenuWidget extends StatelessWidget {
  final int index;
  const MenuWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(menus[index].imagePath),
          const SizedBox(width: 20),
          Text(
            menus[index].name,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
