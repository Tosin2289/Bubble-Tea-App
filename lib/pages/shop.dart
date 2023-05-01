import 'package:bubble_tea_app/components/drink_card.dart';
import 'package:bubble_tea_app/components/drink_tile.dart';
import 'package:bubble_tea_app/model/drink.dart';
import 'package:bubble_tea_app/model/shop.dart';
import 'package:bubble_tea_app/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void goToOrderPage(Drink drink) {
    Navigator.push(context, MaterialPageRoute(builder: ((context) {
      return OrderPage(
        drink: drink,
      );
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(builder: ((context, value, child) {
      return SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              "Bubble Tea Shop",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.shop.length,
                    itemBuilder: ((context, index) {
                      Drink indvidualDrink = value.shop[index];
                      return DrinkCard(
                        drink: indvidualDrink,
                        onPressed: (() => goToOrderPage(indvidualDrink)),
                      );
                    })))
          ],
        ),
      ));
    }));
  }
}
