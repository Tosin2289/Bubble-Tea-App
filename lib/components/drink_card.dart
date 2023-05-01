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
              SizedBox(
                height: 50,
              ),
              Text(
                drink.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                drink.price,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: 150,
                height: 50,
                color: Colors.brown,
                onPressed: onPressed,
                child:
                    Text("Add To Cart", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
