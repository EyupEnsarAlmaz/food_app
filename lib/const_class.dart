import 'package:food_app/main.dart';

class Path {
  String burgerPath = "assets/burger.png";
  String pizzaPath = "assets/pizza.png";
  String rollsPath = "assets/rolls.png";
  String soupPath = "assets/soup.png";
  final String burgerName = "Burger";
  final String pizzaName = "Pizza";
  final String rollsName = "Rolls";
  final String soupName = "Soup";
}

class MainFood {
  String doublePath = "assets/doubleburger.png";
  String etliBarbekuPath = "assets/etlibarbeku.png";
  String kingBeefPath = "assets/kingbeef.png";
  String kingChickenPath = "assets/kingchicken.png";
  String steakPath = "assets/steakburger.png";
  String whooperPath = "assets/whooper.png";
  String beanPath = "assets/beanburger.png";
  String doubleCheeseburgerPath = "assets/doublecheeseburger.png";
  String doubleCheeseBurgerName = "Double Cheese Burger";
  String beanBurgerName = "Bean Burger";
  String doubleName = "Double Burger";
  String etliBarbekuName = "Etli Barbeku Burger";
  String kingBeefName = "King Beef Burger";
  String kingChickenName = "King Chicken Burger";
  String steakName = "Steak Burger";
  String whooperName = "Whooper Burger";
}

List<FoodItem> items = [
  FoodItem(iconImage: Path().pizzaPath, name: Path().pizzaName),
  FoodItem(iconImage: Path().burgerPath, name: Path().burgerName),
  FoodItem(iconImage: Path().rollsPath, name: Path().rollsName),
  FoodItem(iconImage: Path().soupPath, name: Path().soupName),
];
List<FoodItem> items2 = [
  FoodItem(iconImage: MainFood().doublePath, name: MainFood().doubleName),
  FoodItem(
      iconImage: MainFood().etliBarbekuPath, name: MainFood().etliBarbekuName),
  FoodItem(iconImage: MainFood().kingBeefPath, name: MainFood().kingBeefName),
  FoodItem(
      iconImage: MainFood().kingChickenPath, name: MainFood().kingChickenName),
  FoodItem(iconImage: MainFood().steakPath, name: MainFood().steakName),
  FoodItem(iconImage: MainFood().whooperPath, name: MainFood().whooperName),
  FoodItem(
      iconImage: MainFood().doubleCheeseburgerPath,
      name: MainFood().doubleCheeseBurgerName),
  FoodItem(iconImage: MainFood().beanPath, name: MainFood().beanBurgerName),
];
