import 'package:flutter/material.dart';

import '../../models/recent_transaction_model.dart';
import '../../utils/const.dart';

class TransactionWidget extends StatelessWidget {
  final int index;
  const TransactionWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
      decoration: BoxDecoration(
        color: Const.lightTrans,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: [
          Image.asset(
            resentTransactions[index].imagePath,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  resentTransactions[index].name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  resentTransactions[index].date,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            resentTransactions[index].amount,
            style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
