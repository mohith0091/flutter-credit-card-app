import 'package:credit_card_app/utils/const.dart';

class PaymentModel {
  final String name;
  final String imagePath;

  PaymentModel(this.name, this.imagePath);
}

List<PaymentModel> payments = [
  PaymentModel('Sent', Const.sent),
  PaymentModel('Receive', Const.receive),
  PaymentModel('Lone', Const.lone),
  PaymentModel('Topup', Const.topup),
];
