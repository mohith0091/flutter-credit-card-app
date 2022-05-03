import 'package:flutter/material.dart';

import '../../models/payment_model.dart';
import '../../utils/const.dart';

class PaymentWidget extends StatelessWidget {
  final int index;
  const PaymentWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Const.lightTrans,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(payments[index].imagePath)),
        const SizedBox(height: 5),
        Text(
          payments[index].name,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
