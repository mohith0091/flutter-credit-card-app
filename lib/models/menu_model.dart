import '../utils/const.dart';

class MenuModel {
  final String name;
  final String imagePath;

  MenuModel(this.name, this.imagePath);
}

List<MenuModel> menus = [
  MenuModel("Corporate APP", Const.corporate),
  MenuModel("Security Settings", Const.security),
  MenuModel("Online Shopping", Const.cart),
  MenuModel("Groceries", Const.home),
  MenuModel("Utilities", Const.setting),
  MenuModel("Thumb Scanner", Const.fingerPrint),
];
