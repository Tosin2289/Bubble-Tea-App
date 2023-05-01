import 'package:bubble_tea_app/model/drink.dart';
import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  final Widget trailling;
  void Function()? onPressed;
  DrinkTile(
      {Key? key,
      required this.drink,
      required this.onPressed,
      required this.trailling})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown[100],
              borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            title: Text(drink.name),
            subtitle: Text('\$${drink.price}'),
            leading: Image.asset(drink.img),
            trailing: trailling,
          ),
        ),
      ),
    );
  }
}
