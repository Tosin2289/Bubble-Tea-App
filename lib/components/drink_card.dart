import 'package:bubble_tea_app/model/drink.dart';
import 'package:flutter/material.dart';

class DrinkCard extends StatelessWidget {
  final Drink drink;

  void Function()? onPressed;
  DrinkCard({
    Key? key,
    required this.drink,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.brown[100]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                drink.img,
                height: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                drink.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '\$${drink.price}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minWidth: 150,
                height: 50,
                color: Colors.brown,
                onPressed: onPressed,
                child: const Text("Add To Cart",
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
