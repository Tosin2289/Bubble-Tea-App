import 'package:bubble_tea_app/model/drink.dart';
import 'package:flutter/cupertino.dart';

class BubbleTeaShop extends ChangeNotifier {
  final List<Drink> _shop = [
    Drink(name: "Pearl Milk Tea", price: "4.00", img: "assets/img1.png"),
    Drink(name: "Green Tea", price: "6.00", img: "assets/img2.png"),
    Drink(name: "ice Tea", price: "3.00", img: "assets/img3.png"),
    Drink(name: "Choco Tea", price: "7.00", img: "assets/img4.png"),
    Drink(name: "Bubble Tea", price: "5.00", img: "assets/img5.png"),
  ];

  final List<Drink> _userCart = [];

  List<Drink> get shop => _shop;

  List<Drink> get cart => _userCart;

  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
