import 'package:bubble_tea_app/components/drink_tile.dart';
import 'package:bubble_tea_app/model/drink.dart';
import 'package:bubble_tea_app/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  void removeFromCart(Drink drink) {
    Provider.of<BubbleTeaShop>(context, listen: false).removeFromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
        builder: ((context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      "Your Cart",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.cart.length,
                            itemBuilder: ((context, index) {
                              Drink drink = value.cart[index];
                              return DrinkTile(
                                  drink: drink,
                                  onPressed: (() => removeFromCart(drink)),
                                  trailling: Icon(Icons.delete));
                            }))),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Pay",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.brown,
                    )
                  ],
                ),
              ),
            )));
  }
}
