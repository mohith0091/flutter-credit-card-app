import 'package:credit_card_app/utils/const.dart';

class ResentTransactionModel {
  final String name;
  final String date;
  final String amount;
  final String imagePath;

  ResentTransactionModel(this.name, this.date, this.amount, this.imagePath);
}

List<ResentTransactionModel> resentTransactions = [
  ResentTransactionModel("KFC", "Jun 26", "+\$2,010", Const.kfc),
  ResentTransactionModel("Paypal", "Jun 28", "+\$12,010", Const.pp),
  ResentTransactionModel("Car Repair", "Aug 12", "+\$232,010", Const.repair),
];
